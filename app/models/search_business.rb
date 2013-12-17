class SearchBusiness < ActiveRecord::Base
 belongs_to :search
 belongs_to :business

  validates :business_id, presence: true
  validates :search_id, presence: true

end
