require 'rails_helper'

RSpec.describe Flight, :type => :model do
  subject {
    described_class.new(start_airport_id: 'SomeAirportName',
                        end_airport_id: 'SAN', 
                        start_datetime: DateTime.now, 
                        flight_duration_minutes: 100)
  }
  describe '#start_airport_id' do
    it "validates_presence" do
        subject.start_airport_id = ''
        subject.validate
        expect(subject.errors[:start_airport_id]).to include("can't be blank")

        subject.start_airport_id = 1
        subject.validate
        expect(subject.errors[:start_airport_id]).to_not include("can't be blank")
    end
  end

  describe '#end_airport_id' do
    it "validates_presence" do
        subject.end_airport_id = ''
        subject.validate
        expect(subject.errors[:end_airport_id]).to include("can't be blank")

        subject.end_airport_id = 2
        subject.validate
        expect(subject.errors[:end_airport_id]).to_not include("can't be blank")
    end
  end

  describe '#start_datetime' do
    it "validates_presence" do
        subject.start_datetime = ''
        subject.validate
        expect(subject.errors[:start_datetime]).to include("can't be blank")

        subject.start_datetime = DateTime.now
        subject.validate
        expect(subject.errors[:start_datetime]).to_not include("can't be blank")
    end
  end

  describe '#flight_duration_minutes' do
    it "validates_presence" do
        subject.flight_duration_minutes = ''
        subject.validate
        expect(subject.errors[:flight_duration_minutes]).to include("can't be blank")

        subject.flight_duration_minutes = 100
        subject.validate
        expect(subject.errors[:flight_duration_minutes]).to_not include("can't be blank")
    end
  end
end