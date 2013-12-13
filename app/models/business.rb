class Business < ActiveRecord::Base
  has_many :jobs
  has_many :users, through: :jobs

# @alph__positions = self.positions.sort! { |a,b| a.downcase <=> b.downcase } 

#   def show_position_totals
#     @alph_positions.each do |position|
#       position_total(position)
#   end

#   def position_total(position)
#     @alph_positions[position].count
#   end

end
