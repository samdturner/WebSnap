class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.time :delete_time, null: false
    end
    add_index(:photos, :url, unique: true)
  end
end
