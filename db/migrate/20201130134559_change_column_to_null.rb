class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
  	change_column :items, :tag_list, :text, null: true
  end
end
