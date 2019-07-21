require 'rails_helper'

RSpec.describe TodoItemsController, type: :controller do
    before(:each) do
        sign_in(FactoryBot.create(:user))
        @item = FactoryBot.create(:todo_item)
    end

    describe "POST #create" do
        it "creates a successful item" do
            todo_item = TodoItem.create(content: "Message")
            expect(todo_item).to be_an_instance_of TodoItem
        end
    end

    describe "DELETE destroy" do
        it "deletes the item" do
            @item.destroy
            expect(response).to be_successful
        end
    end

    describe "PUT complete" do
        it "completed the item" do
            @item.update_attribute(:completed_at, Time.now)
            expect(@item.completed?).to be_truthy
        end
    end
end
