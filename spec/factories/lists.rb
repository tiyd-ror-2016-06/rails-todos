FactoryGirl.define do
  factory :list do
    title { Faker::ChuckNorris.fact }
    user
  end
end
