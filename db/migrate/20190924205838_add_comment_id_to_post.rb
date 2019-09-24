# frozen_string_literal: true

class AddCommentIdToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :comment_id, :integer
  end
end
