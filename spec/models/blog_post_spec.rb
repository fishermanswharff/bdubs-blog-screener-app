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

require 'rails_helper'

RSpec.describe BlogPost do

  let(:blog_post) { FactoryGirl.create(:blog_post) }

  context 'attributes' do
    describe 'user' do
      it { expect(blog_post).to respond_to(:user) }
      it { expect(blog_post).to respond_to(:user=) }
    end

    describe 'title' do
      it { expect(blog_post).to respond_to(:title) }
      it { expect(blog_post).to respond_to(:title=) }
    end

    describe 'body' do
      it { expect(blog_post).to respond_to(:body) }
      it { expect(blog_post).to respond_to(:body=) }
    end

    describe 'comments' do
      it { expect(blog_post).to respond_to(:comments) }
      it { expect(blog_post).to respond_to(:comments=) }
    end

    describe 'comments' do
      it { expect(blog_post).to respond_to(:comments) }
      it { expect(blog_post).to respond_to(:comments=) }
    end
  end

  describe '#new' do
    it 'is an instance of User' do
      post_attributes = FactoryGirl.attributes_for(:blog_post)
      expect(BlogPost.new(post_attributes)).to be_a BlogPost
    end
  end
end
