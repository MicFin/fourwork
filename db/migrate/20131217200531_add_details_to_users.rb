class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :city_state, :string
    add_column :users, :image, :text
  end
end
