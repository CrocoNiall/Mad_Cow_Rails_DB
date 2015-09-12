class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :location
      t.integer :rating

      t.timestamps null: false
    end
  end
end
