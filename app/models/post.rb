class Post < ActiveRecord::Base

	has_many :comments, dependent: :destroy

	validates_presence_of :body, :title
end
