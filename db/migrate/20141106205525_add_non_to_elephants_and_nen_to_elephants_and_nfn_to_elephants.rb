class AddNonToElephantsAndNenToElephantsAndNfnToElephants < ActiveRecord::Migration
  def change
    add_column :elephants, :non, :boolean
    add_column :elephants, :nen, :boolean
    add_column :elephants, :nfn, :boolean
  end
end
