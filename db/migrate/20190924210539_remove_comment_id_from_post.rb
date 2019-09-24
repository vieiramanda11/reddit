class RemoveCommentIdFromPost < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :comment_id, :integer
  end
end
