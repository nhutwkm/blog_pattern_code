class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :title
      t.string :description
      t.interger :id_user

      t.timestamps null: false
    end
  end
end
