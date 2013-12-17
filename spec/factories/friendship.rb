# require 'spec_helper'

FactoryGirl.define do  
  factory :friendship, class: Friendship do   
    user_id 1
    friend_id 2
    start_date DateTime.now

  end
  
end