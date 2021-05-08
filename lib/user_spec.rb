# frozen_string_literal: true

require "rspec"
require_relative "../lib/user.rb"

RSpec.describe User, type: :model do
  subject(:user) { described_class.new }

  describe "name" do
    it "is initialized as an empty string" do
      expect(subject.name).to be_empty
    end
  end

  describe "email" do
    it "is initialized as an empty string" do
      expect(subject.email).to be_empty
    end
  end

  describe "password" do
    it "is initialized as an empty string" do
      expect(subject.password).to be_empty
    end
  end

  describe "authenticate" do
    context 'when password argument equals User password' do
      it 'returns true' do
        subject.password = 'secret'
        expect(subject.authenticate('secret')).to eq(true)
      end
    end
  end
end
