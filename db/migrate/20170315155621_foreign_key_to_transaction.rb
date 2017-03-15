class ForeignKeyToTransaction < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :transactions, :operation
  end
end
