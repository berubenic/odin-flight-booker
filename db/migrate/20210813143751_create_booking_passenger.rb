class CreateBookingPassenger < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_passengers do |t|
      t.integer :passenger_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
