class AddRateToComics < ActiveRecord::Migration[6.0]
  def change
    add_column :comics, :rate, :integer
  end
end
