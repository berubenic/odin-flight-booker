require 'rails_helper'

RSpec.describe Booking, :type => :model do
  subject {
    described_class.new(flight_id: 1)
  }
  describe '#flight_id' do
      it "validates_presence" do
          subject.flight_id = ''
          subject.validate
          expect(subject.errors[:flight_id]).to include("can't be blank")

          subject.flight_id = 1
          subject.validate
          expect(subject.errors[:flight_id]).to_not include("can't be blank")
      end
  end
end