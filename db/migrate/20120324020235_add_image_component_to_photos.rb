class AddImageComponentToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image_uid,  :string
    add_column :photos, :image_name, :string 
  end
end
