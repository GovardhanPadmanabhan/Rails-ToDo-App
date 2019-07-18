# frozen_string_literal: true

require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  test 'todo item' do
    item = TodoItem.new content: todo_items(:one).content,
                        todo_list: todo_items(:one).todo_list,
                        completed_at: todo_items(:one).completed_at

    assert item.save

    item_copy = TodoItem.find(item.id)

    assert_equal item.content, item_copy.content

    item.todo_list = todo_items(:two).todo_list

    assert item.save
    assert item.destroy
  end
end
