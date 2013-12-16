require 'spec_helper'

describe Comment do  
  before(:each) do  
    @comment = FactoryGirl.create(:comment)
  end

  # describe 'associations' do 
  #   it { should belong_to :job }
  #   it { expects(@comment.job).to eq(1)}
  # end

end
