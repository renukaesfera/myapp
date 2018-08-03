class PagesController < ApplicationController

	def home
		@pages=Post.joins(:page).where(publish: true).order("created_at DESC").first(4)
	end

	def about_us
	end

	def blog
		@posts=Post.where(publish: true).order("created_at DESC").paginate(page: params[:page])
	end
 

end
