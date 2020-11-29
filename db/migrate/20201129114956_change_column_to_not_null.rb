class ChangeColumnToNotNull < ActiveRecord::Migration[5.2]
  def change
  	change_column :creaters, :status, :integer, null: true
  end
end
