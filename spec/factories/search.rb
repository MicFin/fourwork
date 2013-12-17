# require 'spec_helper'

FactoryGirl.define do 
  factory :search, class: Search do 
    business_name "Starbucks"
    city "Hingham, Ma"
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
