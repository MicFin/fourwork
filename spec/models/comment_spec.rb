# require 'spec_helper'

describe Comment do  
  before(:each) do  
    @comment = FactoryGirl.create(:comment)
  end

  describe 'validations ' do
    it {should validate_presence_of(:commentor_id)}
    it {should validate_presence_of(:content)} 
  end 

end
