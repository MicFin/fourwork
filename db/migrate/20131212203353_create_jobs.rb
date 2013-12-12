class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :user
      t.belongs_to :business
      t.string :state
      t.date :start_date
      t.date :end_date
      t.string :position
      t.timestamps
    end
  end
end
