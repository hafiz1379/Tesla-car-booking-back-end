require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end

  describe 'devise modules' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }

    it { should validate_confirmation_of(:password) }

    it { should allow_value('example@example.com').for(:email) }
    it { should_not allow_value('invalid_email').for(:email) }
  end
end
