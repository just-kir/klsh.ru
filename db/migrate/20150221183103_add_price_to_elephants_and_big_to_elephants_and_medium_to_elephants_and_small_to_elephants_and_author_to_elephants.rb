class AddPriceToElephantsAndBigToElephantsAndMediumToElephantsAndSmallToElephantsAndAuthorToElephants < ActiveRecord::Migration
  def change
    add_column :elephants, :price, :float
    add_column :elephants, :big, :boolean
    add_column :elephants, :medium, :boolean
    add_column :elephants, :small, :boolean
    add_column :elephants, :author, :string
  end
end
