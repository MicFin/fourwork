class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.belongs_to :friend, index: true
      t.belongs_to :user, index: true
      t.datetime :start_date
      t.string :state
    end
  end
end
