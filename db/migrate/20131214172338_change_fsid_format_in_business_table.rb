class ChangeFsidFormatInBusinessTable < ActiveRecord::Migration
  def self.up
   change_column :businesses, :fs_id, :string
  end

  def self.down
   change_column :businesses, :fs_id, :integer
  end
end
