require 'rails_helper'

RSpec.shared_examples 'blog post attachments' do

  let(:attachment) { FactoryGirl.create(:blog_post_attachment) }

  context 'attributes' do
    describe 'title' do
      it { expect(attachment).to respond_to(:title) }
      it { expect(attachment).to respond_to(:title=) }
    end

    describe 'caption' do
      it { expect(attachment).to respond_to(:caption) }
      it { expect(attachment).to respond_to(:caption=) }
    end

    describe 'url' do
      it { expect(attachment).to respond_to(:url) }
      it { expect(attachment).to respond_to(:url=) }
    end

    describe 'media_type' do
      it { expect(attachment).to respond_to(:media_type) }
      it { expect(attachment).to respond_to(:media_type=) }
    end
  end
end
