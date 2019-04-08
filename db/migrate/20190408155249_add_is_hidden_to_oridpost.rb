class AddIsHiddenToOridpost < ActiveRecord::Migration[5.0]
  def change
    add_column :oridposts, :is_hidden, :boolean, default: false
  end
end
