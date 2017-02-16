FactoryGirl.define do
  factory :blog_post do
    title Faker::Hipster.sentence
    body Faker::Hipster.paragraphs(3)
    user
  end
end
