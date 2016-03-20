class CreateFractions < ActiveRecord::Migration
  def change
    create_table :fractions do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.integer :deputy_id
      t.index :name, unique: true

      t.timestamps null: false
    end
  end
end
