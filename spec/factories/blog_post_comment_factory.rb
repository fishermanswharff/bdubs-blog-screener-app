# == Schema Information
#
# Table name: blog_post_comments
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  parent_id   :integer
#  parent_type :string
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

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
