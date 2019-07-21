require 'rails_helper'

RSpec.describe TodoListsController, type: :controller do
    
    before(:each) do
        sign_in(FactoryBot.create(:user))
        @list = FactoryBot.create(:todo_list)
    end

    describe "GET index" do
        it "renders the index template successfully" do
            get :index
            expect(response).to render_template("index")
        end
    end

=begin
    describe "GET show" do
        render_views
        it "renders the show template successfully" do
            list = FactoryBot.create(:todo_list)
            
            #get :show => list
            render :template => "todo_lists/show.html.erb"
            expect(rendered).to have_text(list.title)   
            expect(rendered).to match(list.description)
        end
    end
=end

    describe 'GET #new' do
        it 'assigns a new todo_list to @todo_list' do
            get :new
            expect(assigns(:todo_list)).to be_a_new(TodoList)
        end
    end

    describe " POST #create" do
        it "creates a successful list" do
            todo_list = TodoList.create(title: "Message")
            expect(todo_list).to be_an_instance_of TodoList
        end
    end

    describe "PUT #update" do
        it "allows the title and description to be changed" do
            put :update, params: {id: @list, todo_list: FactoryBot.attributes_for(:todo_list, title: "List#1", description: "some description") }
            @list.reload
            expect(@list.title).to eq("List#1")
            expect(@list.description).to eq("some description")
        end
    end

    describe "DELETE destroy" do
        it "deletes the list" do
            expect{
                delete :destroy, params: {id: @list}       
            }.to change(TodoList,:count).by(-1)
        end
    end

end
