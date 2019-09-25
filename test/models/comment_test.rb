# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.create(comment: 'bodybodybodybody')
    user_id
    post_id
  end

  def user_id
    @user = User.create(name: 'amanda', email: 'amanda@email.com')
    @comment.user_id = @user.id
  end

  def post_id
    @post = Post.create(title: 'Title', body: 'bodycombodybody')
    @post.user_id = @user.id
    @comment.post_id = @post.id
  end

  test 'should be valid' do
    assert @comment.valid?
  end

  test 'comment should be present' do
    @comment.comment = ' '
    assert_not @comment.valid?
  end

  test 'coment should not be too long' do
    @comment.comment = 'a' * 251
    assert_not @comment.valid?
  end

  test 'title should not be too short' do
    @comment.comment = 'a'
    assert_not @comment.valid?
  end
end
