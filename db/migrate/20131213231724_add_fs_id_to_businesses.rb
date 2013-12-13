class AddFsIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :fs_id, :integer
  end
end
