class AddNtnToElephants < ActiveRecord::Migration
  def change
    add_column :elephants, :ntn, :boolean
  end
end
