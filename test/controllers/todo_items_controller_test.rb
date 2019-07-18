# frozen_string_literal: true

require 'test_helper'

class TodoItemsControllerTest < ActionDispatch::IntegrationTest
  test 'complete todo item' do
    item1 = TodoItem.new content: todo_items(:two).content,
                         todo_list: todo_items(:two).todo_list,
                         completed_at: todo_items(:two).completed_at

    assert item1.save if item1.completed?
  end
end
