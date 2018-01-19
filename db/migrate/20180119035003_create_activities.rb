class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :workout_id
      t.text :type
      t.time :length

      t.timestamps
    end
  end
end
