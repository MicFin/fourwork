class Business < ActiveRecord::Base
  has_many :jobs
  has_many :businesses, through: :jobs
end
