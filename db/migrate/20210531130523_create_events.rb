class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.float :price
      t.integer :max_participants
      t.text :description
      t.string :video_link

      t.timestamps
    end
  end
end
