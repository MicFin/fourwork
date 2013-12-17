# require 'spec_helper'

FactoryGirl.define do  
  factory :comment, class: Comment do   
    content "This is a comment"
    commentor_id 1
  end
  
end