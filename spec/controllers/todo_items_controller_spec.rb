# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TodoItemsController, type: :controller do
  let(:item) { create(:todo_item) }
  before do
    sign_in(FactoryBot.create(:user))
  end

  describe 'POST #create' do
    it 'creates a successful item' do
      expect(item).to be_an_instance_of TodoItem
    end
  end

  describe 'DELETE destroy' do
    before do
      item.destroy
    end
    it 'deletes the item' do
      expect(response).to be_successful
    end
  end

  describe 'PUT complete' do
    before do
      item.update_attribute(:completed_at, Time.now)
    end
    it 'completed the item' do
      expect(item.completed?).to be_truthy
    end
  end
end
