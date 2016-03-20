class CreateFractionVotes < ActiveRecord::Migration
  def change
    create_table :fraction_votes do |t|
      t.references :fraction, index: true, foreign_key: true
      t.references :vote, index: true, foreign_key: true
      t.integer :number_of_present
      t.integer :yes
      t.integer :no
      t.integer :dont_know

      t.timestamps null: false
    end
  end
end
