# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email{ 'John@mamail.com' }
    password { 'baby123' }
    password_confirmation { 'baby123' }
  end
end
