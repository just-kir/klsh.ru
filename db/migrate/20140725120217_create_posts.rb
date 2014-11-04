class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :tweet
      t.text :text

      t.timestamps
    end
  end
end
