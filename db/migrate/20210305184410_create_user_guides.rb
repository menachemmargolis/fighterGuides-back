class CreateUserGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :user_guides do |t|

      t.timestamps
    end
  end
end
