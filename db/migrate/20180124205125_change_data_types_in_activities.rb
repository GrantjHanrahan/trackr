class ChangeDataTypesInActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :length, :float
  end
  def change
    change_column :activities, :distance, :float
  end
end
