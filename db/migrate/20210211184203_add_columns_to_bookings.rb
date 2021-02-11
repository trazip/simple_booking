class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime
    add_column :bookings, :duration, :datetime
  end
end
