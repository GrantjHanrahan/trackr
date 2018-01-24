class ChangeTypeOfActivityKindOnActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :activity_type, 'numeric USING CAST(activity_type AS numeric)'
  end
end
