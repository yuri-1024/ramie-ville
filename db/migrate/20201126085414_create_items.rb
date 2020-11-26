class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,         null: false
      t.text :body,           null: false
      t.integer :price,       null: false
      t.integer :status,      null: false
      t.text :tag_list,       null: false
      t.string :image_id,     null: false
      t.string :creater_id,   null: false

      t.timestamps
    end
  end
end
