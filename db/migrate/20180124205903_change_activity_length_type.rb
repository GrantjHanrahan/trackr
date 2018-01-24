class ChangeActivityLengthType < ActiveRecord::Migration[5.1]
    def change
      # change_column :activities, :length, "numeric USING CAST(length AS numeric)"
      remove_column :activities, :length
      add_column :activities,  :length, :integer
    end
end
