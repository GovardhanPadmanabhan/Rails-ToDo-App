# frozen_string_literal: true

class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :delete_all
  belongs_to :user

  validates :title, presence: true
end
