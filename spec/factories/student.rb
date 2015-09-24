FactoryGirl.define do
  factory :student do
    student_number "06221A0453" 
    username       { Faker::Name.first_name }
    first_name     { Faker::Name.first_name }
    last_name      { Faker::Name.last_name }
    gender         "1"
    dob            '06-06-1985'
    email          { Faker::Internet.email }
    address_1      { Faker::Address.street_address }
    address_2      { Faker::Address.secondary_address }
    city           { Faker::Address.city}
    country        { Faker::Address.country}
    postcode       { Faker::Address.postcode}
  end
end