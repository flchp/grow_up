class AddIsDisplayToOridpost < ActiveRecord::Migration[5.0]
  def change
    add_column :oridposts, :is_display, :boolean, default: true
  end
end
