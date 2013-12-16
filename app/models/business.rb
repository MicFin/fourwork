class Business < ActiveRecord::Base
  has_many :jobs
  has_many :users, through: :jobs
  has_many :search_businesses
  has_many :searches, through: :search_businesses

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

  def self.categories
    @all_categories_list = []
    self.all.each do |business|
      @all_categories_list << business.category
    end
    @uniq_categories = @all_categories_list.uniq!
    self.by_category(@uniq_categories)
  end

  def self.by_category(categories)
    @by_category = {}
    categories.each do |category|
      self.all.each do |business|
        if business.category == category
          if @by_category[category] == nil 
            @by_category[category] = [business]
          else
            @by_category[category] += [business]
          end
        end
      end
    end 
    return @by_category
  end

  def self.by_employee_count
    @by_employees ={}
    self.all.each do |business|
      @by_employees[business] = business.users.count
    end
    return @by_employees.sort_by { |business, employees| employees }
  end



end
