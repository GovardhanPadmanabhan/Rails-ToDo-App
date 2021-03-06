# frozen_string_literal: true

class AddCompletedAtToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :completed_at, :datetime
  end
end
