class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :operation
      t.boolean :debet

      t.timestamps
    end
  end
end
