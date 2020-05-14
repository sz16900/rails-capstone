require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
        @user = User.create(username: 'seth', email: 'cool@q.com', password: '12345678')
    end
    context 'tests the user model creation' do
        it 'create valid user' do
            expect(@user.valid?).to eq(true)
        end

        it 'creates an invalid user' do
            @user = User.create(username: 'Hello my name is awesomo-3000', email: 'cool@q.com',
                                password: '12345678', password_confirmation: '12345678')
            expect(@user.valid?).to eq(false)
        end
    end
end