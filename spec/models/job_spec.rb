require 'spec_helper'

describe Job do 

	before (:each) do
	@job = FactoryGirl.create(:job)
	end  

	describe 'associations' do 
		it {should belong_to(:user) }
		it {should belong_to(:business) }
		it {should have_many(:comments) }
		# it { expect(@job.comments.length).to eq(3)}
	end 

	describe 'validations ' do
		it {should validate_presence_of(:position)}
		it {should validate_presence_of(:start_date)} 
		it {should validate_presence_of(:end_date)}
		it {should validate_presence_of(:user_id)} 
		it {should validate_presence_of(:business_id)} 
	end 

end