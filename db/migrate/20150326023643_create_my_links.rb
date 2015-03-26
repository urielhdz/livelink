class CreateMyLinks < ActiveRecord::Migration
  def change
    create_table :my_links do |t|
    	t.string :link
    	t.references :user, index: true
      t.timestamps null: false
    end
  end
end
