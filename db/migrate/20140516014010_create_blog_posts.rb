class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :author
      t.string :subject
      t.text :post
      t.integer :blog_id

      t.timestamps
    end
  end
end
