class Job < ActiveRecord::Base
 belongs_to :user
 belongs_to :business

   def user_position_list(position)
        binding.pry
    self.users.find(position: position)
  end

end
