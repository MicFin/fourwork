class Business < ActiveRecord::Base
  has_many :jobs
  has_many :users, through: :jobs

# @alph_positions = self.positions.sort! { |a,b| a.downcase <=> b.downcase } 

def positions_list
  @all_positions = []
  self.jobs.each do |job|
    @all_positions << job.position 
  end
  positions_totals(@all_positions)
end

def positions_totals(positions)
  total_positions = {}
  positions.each do |position|
    if total_positions[position] == nil
      total_positions[position] = 1
    else
      total_positions[position] += 1
    end
  end
  return total_positions.sort_by {|position, number| position}
end

end
