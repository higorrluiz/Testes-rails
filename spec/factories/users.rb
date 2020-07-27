FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    age {12}
    password { 1 }
    password_confirmation { 1 }
  end
end
