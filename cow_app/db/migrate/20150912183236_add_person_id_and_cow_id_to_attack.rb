class AddPersonIdAndCowIdToAttack < ActiveRecord::Migration
  def change
    add_reference :attacks, :person, index: true, foreign_key: true
    add_reference :attacks, :cow, index: true, foreign_key: true
  end
end
