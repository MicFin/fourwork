class ChangeLatAndLongFormatInBusinessTable < ActiveRecord::Migration
  def self.up
   change_column :businesses, :longitude, :string
   change_column :businesses, :latitude, :string
  end

  def self.down
   change_column :businesses, :longitude, :integer
   change_column :businesses, :latitude, :integer  
  end
end
