class AddLocationToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :location, :text
  end
end
