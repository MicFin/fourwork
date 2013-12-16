require 'spec_helper'

FactoryGirl.define do  
  factory :comment, class: Comment do   
    content "This is a comment"

  end
  
end