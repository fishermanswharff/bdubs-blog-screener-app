require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { FactoryGirl.create(:user) }

  context 'attributes' do
    describe 'blog_posts' do
      it 'responds to the attribute getter' do
        expect(user).to respond_to(:blog_posts)
      end

      it 'responds to the attribute setter' do
        expect(user).to respond_to(:blog_posts=)
      end

      it 'can be assigned' do
        user.blog_posts = FactoryGirl.create_list(:blog_posts, 12, user: user)
        expect(user.blog_posts.count).to eq 12
      end
    end
  end

  describe '#new' do
    it 'is an instance of User' do
      expect(User.new).to be_a User
    end
  end
end
