class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0
      t.belongs_to :user
      t.belongs_to :post

      t.timestamps
    end
  end
end
