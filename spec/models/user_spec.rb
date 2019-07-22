# frozen_string_literal: true

require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'is valid with valid attributes' do
    expect(FactoryBot.create(:user)).to be_valid
  end

  it 'is not valid with wrong email syntax' do
    user = User.new(email: 'hello', password: '12345', password_confirmation: '12345')
    expect(user).to_not be_valid
  end

  it 'is not valid if the passwords do not match' do
    user = User.new(email: Faker::Internet.email, password: '12345', password_confirmation: '123456')
    expect(user).to_not be_valid
  end
end
