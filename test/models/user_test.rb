require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  assert_not michael.following?(archer)
  michael.follow(archer)
  assert michael.following?(archer)
  assert archer.followers.include?(michael)
  michael.unfollow(archer)
  assert_not michael.following?(archer)
  # end
end
