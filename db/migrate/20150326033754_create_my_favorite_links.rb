class CreateMyFavoriteLinks < ActiveRecord::Migration
  def change
    create_table :my_favorite_links do |t|
      t.references :my_link, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
