class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0
      t.belongs_to :user
      t.belongs_to :comment

      t.timestamps
    end
  end
end
