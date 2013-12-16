require 'spec_helper'

FactoryGirl.define do 
  factory :job, class: Job do 
    start_date "1999-01-02"
    end_date "1999-01-02"
    position "cook"
    user_id 1
    business_id 1

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