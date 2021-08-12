require 'rails_helper'

RSpec.describe FlightSearch, :type => :model do
  subject {
    described_class.new(number_of_passengers: 2, 
                        date: Date.today, 
                        start_airport_id: 1, 
                        end_airport_id: 2)
  }
  describe '#number_of_passengers' do
    it "validates_presence" do
        subject.number_of_passengers = ''
        subject.validate
        expect(subject.errors[:number_of_passengers]).to include("can't be blank")

        subject.number_of_passengers = 2
        subject.validate
        expect(subject.errors[:number_of_passengers]).to_not include("can't be blank")
    end
  end

  describe '#date' do
    it "validates_presence" do
        subject.date = nil
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to include("can't be blank")

        subject.date = Date.today
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to_not include("can't be blank")
    end

    it "validates_date_after_or_equal_to_today" do
        subject.date = Date.today - 1.day
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to include("must be after or equal to #{Date.today}")

        subject.date = Date.today
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to_not include("must be after or equal to #{Date.today}")

        subject.date = Date.today + 1.day
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to_not include("must be after or equal to #{Date.today}")
    end

    it "validates_type" do
        subject.date = Object.new
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to include("is not a date")

        subject.date = Date.today
        subject.validate
        # error message handled by date_validator gem
        expect(subject.errors[:date]).to_not include("is not a date")
    end
  end

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

  
end