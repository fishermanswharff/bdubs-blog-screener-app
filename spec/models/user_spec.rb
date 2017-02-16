require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#new' do
    it 'is an instance of User' do
      expect(User.new).to be_a User
    end
  end
end
