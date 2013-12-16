class Job < ActiveRecord::Base
 belongs_to :user
 belongs_to :business

 # reference, coworker
 has_many :comments, as: :commentable

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :position, presence: true
  validates :user_id, presence: true
  validates :business_id, presence: true


#### old method? 
  #  def user_position_list(position)
  #   self.users.find(position: position)
  # end

end
