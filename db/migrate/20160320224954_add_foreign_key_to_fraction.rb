class AddForeignKeyToFraction < ActiveRecord::Migration
  def change
    add_foreign_key :fractions, :deputies

#### Для rails 4.1
#    reversible do |dir|
#      dir.up do
#        execute("ALTER TABLE fractions ADD CONSTRAINT deputy_fk FOREIGN KEY(deputy_id) REFERENCES deputies(id)")
#      end
#      dir.down do
#        execute("ALTER TABLE fractions DROP CONSTRAINT deputy_fk")
#      end
#    end
  end

end
