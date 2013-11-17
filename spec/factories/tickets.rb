# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    departure "MyString"
    arrival "MyString"
    transportation "MyString"
    seat "MyString"
  end
end
