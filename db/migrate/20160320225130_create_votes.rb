class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :law, index: true, foreign_key: true
      t.date :vote_date
      t.integer :number
      t.integer :result

      t.timestamps null: false
    end
  end
end
