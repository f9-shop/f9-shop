class CreateBsmenucs < ActiveRecord::Migration[5.2]
  def change
    create_table :bsmenucs do |t|
      t.references :user, foreign_key: true
      t.references :bshop, foreign_key: true
      t.string :name
      t.string :price
      t.string :detail1
      t.string :detail2
      t.string :detail3
      t.string :detail4
      t.string :detail5
      t.string :detail6
      t.string :detail7
      t.string :detail8
      t.string :detail0
      t.string :detail10

      t.timestamps
    end
  end
end
