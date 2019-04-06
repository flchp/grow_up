class AddUserIdToOridpost < ActiveRecord::Migration[5.0]
  def change
    add_column :oridposts, :user_id, :integer
  end
end
