class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :slug
      t.text :description

      t.timestamps
    end
    
    add_index :galleries, :slug,  unique: true
  end
end
