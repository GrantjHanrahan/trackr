class AddDistanceToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :distance, :integer
  end
end
