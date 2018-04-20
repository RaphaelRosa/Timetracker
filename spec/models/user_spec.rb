require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: 'jon@winterfell.com', password: 'ygritte4life', password_confirmation: 'ygritte4life', first_name: 'Jon', last_name: 'Snow') 
    end

    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created without first_name' do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it 'cannot be created without last_name' do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
