class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.date :date
      t.decimal :quality
      t.string :comment
      t.belongs_to :type, index: true
      t.timestamps
    end
  end
end
