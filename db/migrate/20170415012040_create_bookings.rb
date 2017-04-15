class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :room, foreign_key: true
      t.belongs_to :patron, foreign_key: true

      t.timestamps
    end
  end
end
