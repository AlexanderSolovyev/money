class AddForeignKeyToTrans < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :trans, :type
  end
end
