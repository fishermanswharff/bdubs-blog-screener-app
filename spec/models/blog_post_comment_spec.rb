require 'rails_helper'

RSpec.describe BlogPostComment do

  let(:comment) { FactoryGirl.create(:blog_post_comment) }

  context 'attributes' do
    describe 'blog_post' do
      # hint: this is an alias for the 'parent' column
      it { expect(comment).to respond_to(:blog_post) }
      it { expect(comment).to respond_to(:blog_post=) }
    end

    describe 'user' do
      it { expect(comment).to respond_to(:user) }
      it { expect(comment).to respond_to(:user=) }
    end

    describe 'comment' do
      it { expect(comment).to respond_to(:comment) }
      it { expect(comment).to respond_to(:comment=) }
    end

    describe 'body' do
      it { expect(comment).to respond_to(:body) }
      it { expect(comment).to respond_to(:body=) }
    end
  end

  describe '#new' do
    it 'instantiates a new instance' do
      comment_attrs = FactoryGirl.attributes_for(:blog_post_comment)
      expect(BlogPostComment.new(comment_attrs)).to be_a BlogPostComment
    end
  end
end
