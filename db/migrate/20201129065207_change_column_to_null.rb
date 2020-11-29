class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_users, :is_deleted, :boolean, null: true
  end
end
