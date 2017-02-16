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

class BlogPostComment < ApplicationRecord
end
