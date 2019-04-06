class CreateOridposts < ActiveRecord::Migration[5.0]
  def change
    create_table :oridposts do |t|
      t.string :title
      t.text :objective
      t.text :reflective
      t.text :interpretive
      t.text :decision

      t.timestamps
    end
  end
end
