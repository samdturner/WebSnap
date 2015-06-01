class FixUrlName < ActiveRecord::Migration
  def change
    rename_column :photos, :url, :original_url
    add_column :photos, :imgur_url, :string, null: false
  end
end
