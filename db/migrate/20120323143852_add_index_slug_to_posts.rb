class AddIndexSlugToPosts < ActiveRecord::Migration
  def change
    add_index :posts, :url_slug, unique: true
  end
end
