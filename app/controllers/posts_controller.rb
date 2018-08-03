class PostsController < ApplicationController
	before_action :page_signed_in?, only:[:new, :edit, :update, :destroy,:create]
	
	def index
		@post=current_page.posts.all.order("created_at DESC").paginate(page: params[:page])
	end

	def create
		@post= current_page.posts.build(post_param)

	  	if @post.save
	    	flash[:success] = "Post created!"
	   		redirect_to root_path
	  	else
	  		flash[:alert] = "Post creation failed!"
	  		render 'new'
	  	end
	end

	def new
		@post = current_page.posts.build if page_signed_in?
	end

    def edit
  		@post=Post.find_by(id: params[:id])
    end

    def show
    		
    end

    def update
    	@post=Post.find_by(id: params[:id])
    	if @post.update_attributes(post_param)
	    	flash[:success] = "Post updated!"
	   		redirect_to posts_path
	  	else
	  		flash[:success] = "Post updation failed!"
	  		render 'edit'
	  	end
    end

    def destroy
    	@post=Post.find_by(id: params[:id])
    	@post.destroy
  	flash[:success] = "Post deleted"
  	redirect_to request.referrer || root_url
    end

	private

	def post_param
		params.require(:post).permit(:content, :picture, :publish)
	end
end
