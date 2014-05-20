module BlogPostsHelper

	def update_num_comments(blog_post_id)

		blog_post = BlogPost.find(blog_post_id)

		num_comments = blog_post.blog_comments.count

		blog_post.num_comments = num_comments

		blog_post.save

	end
end
