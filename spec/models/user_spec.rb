require 'spec_helper'

describe User do

  describe 'on sign up' do
    
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:name) }
    it { should allow_value('john@doe.co.uk').for(:email) }
    it { should allow_value('john@doe.com').for(:email) }
    it { should_not allow_value('john@').for(:email) }
    it { should_not allow_value('john@com').for(:email) }
    it { should_not allow_value('john.com').for(:email) }
    it 'should validate uniqueness of email' do
      User.create(email: 'john.doe@example.com', password: 'pass1234', password_confirmation: 'pass1234', name: 'John Doe')
      should validate_uniqueness_of(:email)
    end

  end

end