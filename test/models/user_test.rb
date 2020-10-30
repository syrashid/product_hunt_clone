require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    # Setup
    user = User.new(first_name: "sy", last_name: "RasHId")

    # Exercise & Verify
    assert_equal "Sy Rashid", user.full_name

    # Teardown
  end

  test "Sample test to add a green dot" do
    assert_equal 1, 1
  end
end
