class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.references :top, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
