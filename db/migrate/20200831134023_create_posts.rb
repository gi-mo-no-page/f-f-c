class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text          , null: false
      t.integer :user_id      , null:false, foreigh_key:true
      t.integer :comic_id     , null:false, foreigh_key:true
      t.timestamps
    end
  end
end
