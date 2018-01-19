class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :plan_id
      t.text :workout_name
      t.datetime :date

      t.timestamps
    end
  end
end
