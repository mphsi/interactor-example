# frozen_string_literal: true

require 'rspec'
require_relative 'user'
require_relative 'authenticate_user'

RSpec.describe AuthenticateUser, type: :model do
  subject(:context) { AuthenticateUser.call(user: user, password: 'secret') }
  let(:user) { User.new('Paul', 'paul.hernandez.sifuentes@particle.io', 'secret') }

  describe 'call' do
    context 'when password argument matches User password' do
      it 'authenticates the user' do
        expect(context).to be_a_success
      end
    end

    context 'when password argument does not matches User password' do
      before { allow(user).to receive(:password).and_return('something_else') }

      it 'does not authenticates the User' do
        expect(context).to be_a_failure
      end
    end
  end
end
