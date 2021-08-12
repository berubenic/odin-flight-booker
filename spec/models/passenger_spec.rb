require 'rails_helper'

RSpec.describe Passenger, :type => :model do
  subject {
    described_class.new(name: 'Nick', 
                        email: "nick@nick.com")
  }
  describe '#name' do
    it "validates_presence" do
        subject.name = ''
        subject.validate
        expect(subject.errors[:name]).to include("can't be blank")

        subject.name = "Nick"
        subject.validate
        expect(subject.errors[:name]).to_not include("can't be blank")
    end
  end

  describe '#email' do
    it "validates_presence" do
        subject.email = ''
        subject.validate
        expect(subject.errors[:email]).to include("can't be blank")

        subject.email = "nick@nick.com"
        subject.validate
        expect(subject.errors[:email]).to_not include("can't be blank")
    end
  end
end