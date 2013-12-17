# require 'spec_helper'

describe Business do 

  before (:each) do
  @business = FactoryGirl.create(:business)
  end  

  describe 'associations' do 
    it {should have_many(:jobs) }
    it {should have_many(:users) }
    it {should have_many(:search_businesses) }
    it {should have_many(:searches) }
    it {should have_many(:comments) }
  end 

  describe 'validations ' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:fs_id)} 
    it {should validate_presence_of(:longitude)}
    it {should validate_presence_of(:latitude)} 
    it {should validate_presence_of(:category)} 
    it {should validate_presence_of(:parent_category)} 
  end 

end