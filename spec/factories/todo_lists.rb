# frozen_string_literal: true

FactoryBot.define do
  factory :todo_list do
    title { 'Test#1' }
    description { 'testing' }
    user { create :user }
  end
end
