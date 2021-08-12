require 'rails_helper'

RSpec.describe Airport, :type => :model do
  subject {
    described_class.new(name: 'SomeAirportName',
                        code: 'SAN')
  }
  describe '#name' do
    it "validates_presence" do
        subject.name = ''
        subject.validate
        expect(subject.errors[:name]).to include("can't be blank")

        subject.name = 'SomeAirportName'
        subject.validate
        expect(subject.errors[:name]).to_not include("can't be blank")
    end
  end

  describe '#code' do
    it "validates_presence" do
        subject.code = ''
        subject.validate
        expect(subject.errors[:code]).to include("can't be blank")

        subject.code = 'SAN'
        subject.validate
        expect(subject.errors[:code]).to_not include("can't be blank")
    end
  end
end