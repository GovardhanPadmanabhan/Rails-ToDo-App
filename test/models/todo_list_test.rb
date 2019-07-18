# frozen_string_literal: true

require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  test 'todo list' do
    list = TodoList.new title: todo_lists(:one).title,
                        description: todo_lists(:one).description,
                        user: todo_lists(:one).user

    assert list.save

    list_copy = TodoList.find(list.id)
    assert_equal list.title, list_copy.title

    list.title = 'Change'

    assert list.save
    assert list.destroy

    #   assert true
  end
end
