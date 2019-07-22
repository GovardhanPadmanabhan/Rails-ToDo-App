# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'is valid with valid attributes' do
    expect(FactoryBot.create(:todo_item)).to be_valid
  end

  it 'is not valid without todo_list' do
    todo_item = TodoItem.new(content: 'Item#1', todo_list: nil)
    expect(todo_item).to_not be_valid
  end
end
