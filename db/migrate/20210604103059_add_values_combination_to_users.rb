class AddValuesCombinationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :values_combination, :integer, array: true, default: []
  end
end
