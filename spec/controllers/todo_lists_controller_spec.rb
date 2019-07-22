# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TodoListsController, type: :controller do
  let!(:list) { create(:todo_list) }
  before do
    sign_in(FactoryBot.create(:user))
  end

  describe 'GET index' do
    before do
      get :index
    end
    it 'renders the index template successfully' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end
    it 'assigns a new todo_list to @todo_list' do
      expect(assigns(:todo_list)).to be_a_new(TodoList)
    end
  end

  describe ' POST #create' do
    it 'creates a successful list' do
      expect(list).to be_an_instance_of TodoList
    end
  end

  describe 'PUT #update' do
    before do
      put :update, params: { id: list,
                             todo_list: FactoryBot.attributes_for(:todo_list,
                                                                  title: 'List',
                                                                  description:
                                                                  'some') }
      list.reload
    end
    it 'allows the title and description to be changed' do
      expect(list.title).to eq('List')
      expect(list.description).to eq('some')
    end
  end

  describe 'DELETE destroy' do
    it 'deletes the list' do
      expect do
        delete :destroy, params: { id: list }
      end.to change(TodoList, :count).by(-1)
    end
  end
end
