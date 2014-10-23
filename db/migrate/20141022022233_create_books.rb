class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.boolean :is_checked_out

      t.timestamps
    end
  end
end
