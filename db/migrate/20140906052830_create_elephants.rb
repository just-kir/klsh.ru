class CreateElephants < ActiveRecord::Migration
  def change
    create_table :elephants do |t|
      t.string :name
      t.string :link
      t.string :title
      t.string :department
      t.text :description

      t.timestamps
    end
  end
end
