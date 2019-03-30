# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    name 'TestName'
    password '123456'
    password_confirmation '123456'
  end
end