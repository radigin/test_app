class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :law, index: true, foreign_key: true, null: false
      t.date :vote_date, null: false
      t.integer :number, null: false
      t.integer :result, null: false
      t.index [:law_id, :vote_date], unique: true 

      t.timestamps null: false
    end
  end
end
