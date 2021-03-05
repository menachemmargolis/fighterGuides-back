class CreateUserGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :user_guides do |t|
      t.integer :character_id
      t.integer :user_id
      t.string  :guide_image
      t.string  :content
      t.string  :title
      t.integer :likes
      t.timestamps
    end
  end
end
