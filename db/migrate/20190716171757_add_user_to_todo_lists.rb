# frozen_string_literal: true

class AddUserToTodoLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :todo_lists, :user, foreign_key: true
  end
end
