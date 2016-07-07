FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user+#{n}@example.com" }
    password         "hunter2"
    name             "Me"
  end

  factory :admin, class: User do
    sequence(:email) { |n| "admin+#{n}@example.com" }
    password         "secretsecret"
    name             "You"
    admin            true
  end
end
