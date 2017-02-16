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

require 'rails_helper'

RSpec.describe BlogPostComment do

  let(:comment) { FactoryGirl.create(:blog_post_comment) }

  context 'relationships' do
    describe 'belongs_to :post, class_name: "BlogPost", foreign_key: "parent_id"' do
      it { expect(comment).to respond_to(:post) }
      it { expect(comment).to respond_to(:post=) }
    end

    describe 'belongs_to :commenter, class_name: "BlogPostComment", foreign_key: "parent_id"' do
      it { expect(comment).to respond_to(:commenter) }
      it { expect(comment).to respond_to(:commenter=) }
    end

    describe 'has_many :comments, class_name: "BlogPostComment"' do
      it { expect(comment).to respond_to(:comments) }
      it { expect(comment).to respond_to(:comments=) }
    end
  end

  context 'attributes' do
    describe 'body' do
      it { expect(comment).to respond_to(:body) }
      it { expect(comment).to respond_to(:body=) }
    end
  end

  context 'validations' do
    describe 'post' do
      it 'must be present' do
        new_comment = BlogPostComment.new(
          body: 'Aren’t you a little short for a storm trooper?',
          commenter: FactoryGirl.create(:user),
          parent_type: 'BlogPost'
        )
        expect(new_comment).not_to be_valid
        expect(new_comment.errors[:post]).to eq ['must exist']
      end
    end

    describe 'commenter' do
      it 'must be present' do
        new_comment = BlogPostComment.new(
          body: 'Aren’t you a little short for a storm trooper?',
          post: FactoryGirl.create(:blog_post)
        )
        expect(new_comment).not_to be_valid
        expect(new_comment.errors[:commenter]).to eq ['must exist']
      end
    end
  end

  describe '#new' do
    it 'instantiates a new instance' do
      comment_attrs = FactoryGirl.attributes_for(:blog_post_comment)
      expect(BlogPostComment.new(comment_attrs)).to be_a BlogPostComment
    end
  end
end
