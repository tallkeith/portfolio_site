class BlogPost < ActiveRecord::Base
	belongs_to :blog

	has_many :blog_comments
end
