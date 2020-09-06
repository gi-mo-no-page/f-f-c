class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :introduction
      t.string :best_comic
      t.string :like_category
      t.references :user
      t.timestamps
    end
  end
end
