class CreateVideoDates < ActiveRecord::Migration[6.0]
  def change
    create_table :video_dates do |t|
      t.references :user1, null: false, foreign_key: { to_table: :users }
      t.references :user2, null: false, foreign_key: { to_table: :users }
      t.references :event, null: false, foreign_key: true
      t.datetime :start_time

      t.timestamps
    end
  end
end
