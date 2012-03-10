class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :blog_id
      t.integer :user_id
      t.datetime :date_created
      t.boolean :published, default: false
      t.datetime :date_published
      t.string  :title
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end
