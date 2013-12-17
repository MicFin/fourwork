# require 'spec_helper'

describe SearchBusiness do 

  before (:each) do
  @job = FactoryGirl.create(:search_business)
  end  

  describe 'associations' do 
    it {should belong_to(:search) }
    it {should belong_to(:business) }
  end 

  describe 'validations ' do
    it {should validate_presence_of(:search_id)}
    it {should validate_presence_of(:business_id)} 
  end 

end