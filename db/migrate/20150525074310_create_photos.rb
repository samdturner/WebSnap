class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.time :delete_time, null: false
      t.integer :album_id

      t.timestamps
    end
    add_index(:photos, :url)
  end
end
