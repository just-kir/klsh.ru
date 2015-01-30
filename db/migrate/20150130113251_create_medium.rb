class CreateMedium < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :link
      t.text :quote

      t.timestamps
    end
  end
end
