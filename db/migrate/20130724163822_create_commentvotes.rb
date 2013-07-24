class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :upvote
      t.integer :downvote
      t.belongs_to :user
      t.belongs_to :comment

      t.timestamps
    end
  end
end
