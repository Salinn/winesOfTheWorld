# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    wine_id 1
    user_id 1
    see "MyText"
    smell "MyText"
    swirl "MyText"
    sip "MyText"
    swallow "MyText"
    savor "MyText"
  end
end
