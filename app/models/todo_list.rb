class TodoList < ApplicationRecord
    has_many :todo_items, :dependent => :delete_all
    belongs_to :user
end
