class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.text :avatar
      t.integer :age
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
