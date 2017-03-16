class AddForeignToTran < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :trans, :card
  end
end
