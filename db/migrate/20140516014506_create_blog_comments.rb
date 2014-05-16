class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :user
      t.text :comment
      t.string :blog_post_id

      t.timestamps
    end
  end
end
