class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.string :link
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
