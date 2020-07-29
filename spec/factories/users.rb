
FactoryBot.define do
  factory :user do
    name {'marcos'}
    email { "email" }
    password { 1 }
    password_confirmation { 1 }
  end
end
