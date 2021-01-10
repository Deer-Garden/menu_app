class CreateMainMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :main_menus do |t|
      t.string :name        ,null: false      ,default: ""
      t.string :expiration  ,null: false      ,default: ""
      t.text :ingredient    ,null: false 
      t.text :recipe        ,null: false 
      t.integer :kcal       ,null: false 
      t.references :user    ,null: false      ,foreign_key: true
      t.timestamps
    end
  end
end
