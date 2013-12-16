class Job < ActiveRecord::Base
 belongs_to :user
 belongs_to :business

 # reference, coworker
 has_many :comments, as: :commentable

   def user_position_list(position)
        binding.pry
    self.users.find(position: position)
  end

end
