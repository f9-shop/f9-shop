class CreateBequips < ActiveRecord::Migration[5.2]
  def change
    create_table :bequips do |t|
      t.references :user, foreign_key: true
      t.references :bshop, foreign_key: true
      t.string :eauipimg
      t.string :name
      t.string :explain

      t.timestamps
    end
  end
end