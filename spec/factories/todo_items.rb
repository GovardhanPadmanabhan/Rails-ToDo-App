# frozen_string_literal: true

FactoryBot.define do
  factory :todo_item do
    content { 'Item#1' }
    todo_list { create :todo_list }
  end
end
