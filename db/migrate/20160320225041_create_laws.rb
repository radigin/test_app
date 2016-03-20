class CreateLaws < ActiveRecord::Migration
  def change
    create_table :laws do |t|
      t.text :name, null: false
      t.references :fraction, index: true, foreign_key: true, null: false
      t.integer :status, null: false

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        execute("ALTER TABLE laws ADD CHECK(status BETWEEN 0 AND 5)")
      end
    end
  end
end
