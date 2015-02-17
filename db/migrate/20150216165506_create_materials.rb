class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :author
      t.string :position
      t.string :title
      t.text :annotation
      t.boolean :ntn
      t.boolean :nen
      t.boolean :nfn
      t.boolean :non
      t.integer :year
      t.string :link

      t.timestamps
    end
  end
end
