FactoryGirl.define do
  factory :blog_post_comment do
    body Faker::Hipster.sentence
    user

    trait :with_post_parent do
      association :parent, factory: :blog_post, strategy: :create
      parent_type 'BlogPost'
    end

    trait :with_comment_parent do
      association :parent, factory: :blog_post_comment, strategy: :create
      parent_type 'BlogPostComment'
    end
  end
end
