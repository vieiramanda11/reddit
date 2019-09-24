require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Title", body: "bodybodybodybody")
    get_user_id
  end

  def get_user_id 
    @user = User.create(name: "amanda", email: "amanda@email.com")
    @post.user_id = @user.id 
  end 

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = " "
    assert_not @post.valid?
  end

  test "title should not be too long" do
    @post.title = "a" * 51
    assert_not @post.valid?
  end

  test "title should not be too short" do
    @post.title = "a"
    assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = " "
    assert_not @post.valid?
  end

  test "body should not be too long" do
    @post.body = "a" * 251
    assert_not @post.valid?
  end

  test "body should not be too short" do
    @post.body = "a"
    assert_not @post.valid?
  end
end
