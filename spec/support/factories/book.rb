FactoryGirl.define do
  factory :book do
    author { 'John@mamail.com' }
    title { 'baby123' }
    data_published { Date.today.to_s }
    unique_code { rand(1..1000) }
    publisher { 'Mojito' }
  end
end
