class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :interval
      t.string :name

      t.timestamps
    end
  end
end
