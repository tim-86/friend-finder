class AddIndexToUserInterest < ActiveRecord::Migration[6.0]
  def change
    add_column :user_interests, :index, :integer, null: false, default: 0
  end
end
