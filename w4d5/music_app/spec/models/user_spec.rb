# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  password_digest :string           not null
#  email           :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user){ User.new(email: "a@a.com", password: "aaaaaa") }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe '#is_password?' do
    it 'returns true for the correct password' do
      expect(user.is_password?("aaaaaa")).to be_truthy
    end
    it 'returns false for an incorrect password' do
      expect(user.is_password?("bbbbbb")).to be_falsey
    end
  end

  describe '#reset_session_token!' do
    it 'resets the user\'s session token' do
      token = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(token)
    end
    it 'returns the new session token' do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe '::find_by_credentials' do
    it 'finds the correct user' do
      user.save
      expect(User.find_by_credentials("a@a.com", "aaaaaa")).to eq(user)
    end
    it 'returns nil if no user is found' do
      expect(User.find_by_credentials("email", "password")).to be_nil
    end
  end
end
