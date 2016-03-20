class CreateFractionVotes < ActiveRecord::Migration
  def change
    create_table :fraction_votes do |t|
      t.references :fraction, index: true, foreign_key: true, null: false
      t.references :vote, index: true, foreign_key: true, null: false
      t.index [:fraction_id, :vote_id], unique: true
      t.integer :number_of_present, null: false, default: 0
      t.integer :yes, null: false, default: 0
      t.integer :no, null: false, default: 0
      t.integer :dont_know, null: false, default: 0

      t.timestamps null: false
    end
  end
end
