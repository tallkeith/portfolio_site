require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "save new user without email" do
  	user = User.new
  	assert_not user.save, "shouldn't be able to save without email"
  end

  test "save valid user" do
  	user = User.new

  	user.email= "something@something.com"
  	user.password = "password1"

  	assert user.save

  end

  test "invalid password length (assume false)" do
  	user = User.new

  	user.email= "something@something.com"
  	user.password = "bad"

  	assert_not user.save

  end
end
