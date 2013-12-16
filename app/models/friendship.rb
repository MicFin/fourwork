class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: "User"

  def inverse_friendship
    return Friendship.find_by(user_id: self.friend_id, friend_id: self.user_id) 
  end


end