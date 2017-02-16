# == Schema Information
#
# Table name: blog_posts
#
#  id            :integer          not null, primary key
#  title         :text             not null
#  body          :text             not null
#  user_id       :integer
#  comment_count :integer
#  media_count   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class BlogPost < ApplicationRecord
end
