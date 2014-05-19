module BlogPostsHelper

	def update_num_comments(yoda_id)

		blog_post = BlogPost.find(yoda_id)

		num_comments = blog_post.blog_comments.count

		blog_post.num_comments = num_comments

		blog_post.save

	end
end
