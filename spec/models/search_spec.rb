# require 'spec_helper'

describe Search do 

  before (:each) do
  @job = FactoryGirl.create(:search)
  end  

  describe 'associations' do 
    it {should have_many(:search_businesses) }
    it {should have_many(:businesses) }
    it {should have_many(:comments) }
  end 

  describe 'validations ' do
    it {should validate_presence_of(:business_name)}
    it {should validate_presence_of(:city)} 
  end 

end