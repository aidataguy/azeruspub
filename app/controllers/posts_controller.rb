class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@post = Post.friendly.find(params[:id])
	end

	def update
		@post = Post.friendly.find(params[:id])
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	def index
		if params[:tag]
			@posts = Post.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 5)
		else
			@posts = Post.order('created_at DESC').paginate(page: params[:page], per_page: 2)
		end
		if params[:nil].present?
			@posts = @posts.search(params[:nil], page: params[:page])
		else
			@posts = @posts.paginate(page: params[:page])
		end
	end

	def show
		@post = Post.friendly.find(params[:id])
	end

	def autocomplete
	    render json: Post.search(params[:query], autocomplete: true, limit: 5).map(&:title)
	end

	private

	def find_post
		@post = Post.friendly.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description, :content, :tag_list, :preview)
	end


end
