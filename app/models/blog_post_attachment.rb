# == Schema Information
#
# Table name: blog_post_attachments
#
#  id         :integer          not null, primary key
#  title      :text
#  caption    :text
#  url        :text
#  media_type :integer
#

class BlogPostAttachment < ApplicationRecord
end
