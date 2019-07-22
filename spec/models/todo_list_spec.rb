# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TodoList, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject do
    described_class.new(title: 'Test#1', description: 'Testing', user: FactoryBot.create(:user))
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end
end
