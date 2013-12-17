# require 'spec_helper'

describe Friendship do 

  before (:each) do
  @friendship = FactoryGirl.create(:friendship)
  end  

  describe 'associations' do 
    it {should belong_to(:user) }
    it {should belong_to(:friend) }
    it {should have_many(:comments) }
  end 

  describe 'validations ' do
    it {should validate_presence_of(:user_id)}
    it {should validate_presence_of(:friend_id)} 
  end 

end