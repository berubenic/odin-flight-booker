class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :airport_code, :limit => 3, :null => false
      t.string :airport_name, :null => false

      t.timestamps
    end
  end
end
