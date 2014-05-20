class AddNumCommentsToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :num_comments, :integer
  end
end
