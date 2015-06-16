class Role < ActiveRecord::Migration
  def change
  	create_table :Role do |t|
      t.string :name
      t.text :dese
 
      t.timestamps null: false
  end
end
