class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :introduction
      t.string :best_comic
      t.string :like_category
      t.integer :user_id          , null:false, foreigh_key:true
      t.timestamps
    end
  end
end
