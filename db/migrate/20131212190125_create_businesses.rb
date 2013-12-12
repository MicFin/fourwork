class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :latitude
      t.string :longitude
      t.string :phone
      t.string :category
      t.string :parent_category
      t.string :url
    end
  end
end
