# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wine do
    producer "MyString"
    grape "MyString"
    country "MyString"
    region "MyString"
    vintage "MyString"
    price "MyString"
    alcohol_percentage "MyString"
  end
end
