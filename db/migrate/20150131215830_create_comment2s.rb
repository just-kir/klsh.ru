class CreateComment2s < ActiveRecord::Migration
  def change
    create_table :comment2s do |t|
      t.string :commenter
      t.text :body
      t.references :elephant, index: true

      t.timestamps
    end
  end
end
