require 'spec_helper'

FactoryGirl.define do 
  factory :business, class: Business do 
    name "Starbucks"
    address "184 Lincoln St"
    city "Hingham"
    state "MA"
    country "United States"
    latitude "42.248889"
    longitude "-70.903786"
    phone "(781) 749-5474"
    category "Cofee Shop"
    parent_category "Food"
    fs_id "4a9bb7c0f964a520233520e3"
    # ignore do
    #   comments_count 3      
    # end

    # after(:create) do |job, evaluator|
    #   create_list(:comment, evaluator.comments_count, job: job)
    # end
    
    # trait :with_comments do 
      # after(:create) do |instance|
      # create_list :comment, 3, post: instance
      # end
    # end
  end
end

