class CreateFractions < ActiveRecord::Migration
  def change
    create_table :fractions do |t|
      t.string :name
      t.integer :quantity
      t.integer :deputy_id

      t.timestamps null: false
    end
  end
end
