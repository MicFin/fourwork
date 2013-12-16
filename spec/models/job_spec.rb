require 'spec_helper'

describe Job do 

before (:each) do
@job = FactoryGirl.create(:job)

end  

describe 'associations' do 
it {should belong_to(:user) }
it {should belong_to(:business) }
it {should have_many(:comments) }
it { expect(@job.comments.length).to eq(3)}
end 

describe 'validations ' do
it {should validate_presence_of(:content)}
it {should validate_presence_of(:commentor)} 
end 

end