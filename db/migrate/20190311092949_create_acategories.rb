class CreateAcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :acategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
