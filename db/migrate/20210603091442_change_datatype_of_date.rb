class ChangeDatatypeOfDate < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :date, :datetime
  end
end
