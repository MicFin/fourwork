class Job < ActiveRecord::Base
 belongs_to :user
 belongs_to :business

 # reference, coworker
 has_many :comments, as: :commentable

  validates :content, presence: true
  validates :commentor, presence: true

   def user_position_list(position)
        binding.pry
    self.users.find(position: position)
  end

end
