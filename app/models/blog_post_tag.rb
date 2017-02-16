# == Schema Information
#
# Table name: blog_post_tags
#
#  id            :integer          not null, primary key
#  label         :string
#  taggable_type :string
#  taggable_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class BlogPostTag < ApplicationRecord
end
