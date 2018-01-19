class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.datetime :start
      t.datetime :end
      t.integer :frequency

      t.timestamps
    end
  end
end
