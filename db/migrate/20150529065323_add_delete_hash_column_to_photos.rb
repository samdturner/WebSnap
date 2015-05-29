class AddDeleteHashColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :delete_hash, :string
  end
end
