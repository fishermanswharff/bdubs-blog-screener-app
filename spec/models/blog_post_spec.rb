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

  context 'relationships' do
    describe 'belongs_to :author, class_name: "User", foreign_key: "user_id"' do
      it { expect(blog_post).to respond_to(:author) }
      it { expect(blog_post).to respond_to(:author=) }
    end

    describe 'has_many :comments, class_name: "BlogPostComment", foreign_key: "parent_id"' do
      it { expect(blog_post).to respond_to(:comments) }
      it { expect(blog_post).to respond_to(:comments=) }
    end
  end

  context 'attributes' do
    describe 'title' do
      it { expect(blog_post).to respond_to(:title) }
      it { expect(blog_post).to respond_to(:title=) }
    end

    describe 'body' do
      it { expect(blog_post).to respond_to(:body) }
      it { expect(blog_post).to respond_to(:body=) }
    end
  end

  context 'validations' do
    describe 'title' do
      it 'must be present' do
        new_post = BlogPost.new(title: nil)
        expect(new_post).not_to be_valid
      end

      it 'must be unique' do
        BlogPost.create(
          title: 'Jedi Training',
          body: 'These are not the droids you are looking for',
          author: FactoryGirl.create(:user)
        )
        copy_cat = BlogPost.new(title: 'Jedi Training')
        expect(copy_cat).not_to be_valid
      end
    end

    describe 'body' do
      it 'must be present' do
        new_post = BlogPost.new(title: 'Save us Obi-Wan', body: nil)
        expect(new_post).not_to be_valid
      end
    end

    describe 'author' do
      it 'must be present' do
        new_post = BlogPost.new(title: 'Do or do not. There is no try.', body: 'I am one with the force.', author: nil)
        expect(new_post).not_to be_valid
      end
    end
  end

  describe '#new' do
    it 'is an instance of BlogPost' do
      post_attributes = FactoryGirl.attributes_for(:blog_post)
      expect(BlogPost.new(post_attributes)).to be_a BlogPost
    end
  end
end
