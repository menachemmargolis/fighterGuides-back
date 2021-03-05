class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :grid_image
      t.string :detail_image
      t.timestamps
    end
  end
end
