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
  
end
