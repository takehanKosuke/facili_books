class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gread_id, :integer
    add_column :users, :department_id, :integer
  end
end
