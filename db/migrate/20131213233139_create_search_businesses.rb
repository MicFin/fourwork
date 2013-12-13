class CreateSearchBusinesses < ActiveRecord::Migration
  def change
    create_table :search_businesses do |t|
      t.belongs_to :search
      t.belongs_to :business
    end
  end
end
