class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
