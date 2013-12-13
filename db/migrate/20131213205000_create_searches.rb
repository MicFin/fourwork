class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :business_name
      t.string :city
      t.date :last_search

      t.timestamps
    end
  end
end
