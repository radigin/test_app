class CreateLaws < ActiveRecord::Migration
  def change
    create_table :laws do |t|
      t.text :name
      t.references :fraction, index: true, foreign_key: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
