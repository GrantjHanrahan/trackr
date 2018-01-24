class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  rename_column :activities, :type, :activity_type
  end
end
