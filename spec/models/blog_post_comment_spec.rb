require 'rails_helper'

RSpec.describe BlogPostComment do
  describe '#new' do
    it 'instantiates a new instance' do
      expect(BlogPostComment.new).to be_a BlogPostComment
    end
  end
end
