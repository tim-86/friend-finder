class RenameCountToCounterInUserValues < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_values, :count, :counter
  end
end
