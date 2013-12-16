class AddCommentorIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commentor_id, :string
    add_index :comments, :commentor_id
  end
end
