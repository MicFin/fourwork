class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :jobs
  has_many :businesses, through: :jobs
  has_many :friendships
  has_many :friends, through: :friendships
  
  # comments for messaging
  has_many :comments, as: :commentable

  validates :name, presence: true
  validates :email, presence: true
  
  def friends_of_friend(the_friend)
    friends_of_friend = []
    self.friends.each do |friend|
      the_friend.friends.each do |friends_friend|
        if friend == friends_friend
          friends_of_friend << friend 
        end
      end
    end
    return friends_of_friend
  end

end
