class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.integer :upvote
      t.integer :downvote
      t.belongs_to :user
      t.belongs_to :post

      t.timestamps
    end
  end
end
