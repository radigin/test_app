class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|
      t.string :ln
      t.string :fn
      t.string :sn
      t.date :birthday
      t.references :fraction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
