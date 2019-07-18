# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the users' do
    new_user = User.new email: users(:two).email

    assert !new_user.save
  end
end
