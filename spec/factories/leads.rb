FactoryGirl.define do
  factory :lead do
    company "MyString"
    email "info@uiready.io"
    trait :invalid do
      email ""
    end
  end
end
