class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: "User"
  
  # references, comments on people
  has_many :comments, as: :commentable

  validates :user_id, presence: true
  validates :friend_id, presence: true
  validates :start_date, presence: true

  def inverse_friendship
    return Friendship.find_by(user_id: self.friend_id, friend_id: self.user_id) 
  end


end