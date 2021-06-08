class AddBookingOpenToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :booking_open, :boolean, default: true
  end
end
