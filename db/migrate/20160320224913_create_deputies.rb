class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|
      t.string :ln, null: false
      t.string :fn, null: false
      t.string :sn
      t.date :birthday, null: false
      t.references :fraction, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
