class CreateComment4s < ActiveRecord::Migration
  def change
    create_table :comment4s do |t|
      t.string :commenter
      t.text :body
      t.references :doc, index: true

      t.timestamps
    end
  end
end
