class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :name          , null: false
      t.string :author        , null: false
      t.string :volume        , null: false
      t.string :magazine_id   , null: false
      t.integer :genre_id     , null: false
      t.integer :user_id      , null:false, foreigh_key:true
      t.timestamps
    end
  end
end
