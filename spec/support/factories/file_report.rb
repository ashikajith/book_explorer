# frozen_string_literal: true

FactoryGirl.define do
  factory :file_report do
    data_file { '/uploads/file_name.csv' }
    user_id { '1' }
  end
end
