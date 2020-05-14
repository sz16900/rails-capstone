require 'rails_helper'

RSpec.describe User, type: :model do
  context 'create user' do
      usr = User.new(username: "szea", email: "szea@gmail.com", password: "123456789")
    it 'cannot be empty' do
      
      expect(usr.valid?).to eq(true)
    end
  end
end
