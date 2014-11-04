class PostsController < ApplicationController

before_filter :authenticate_user!, :except => [:show, :index, :home]

	def show
  	@post = Post.find(params[:id])
  end

  def index
  	@posts = Post.order("created_at desc").paginate(:page => params[:page], :per_page => 2)
  end	



  def home
    @posts = Post.order("created_at desc").limit(5)
  end  
	
	def new	
		@post = Post.new
	end	


	def create

  	@post = Post.new(post_params)
  	@post.save
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end		
	end	

  def edit
  	@post = Post.find(params[:id])
	end


	def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
 
  	redirect_to posts_path
	end

	def update
  	@post = Post.find(params[:id])
  	if @post.update(post_params)
    	redirect_to @post
  	else
    	render 'edit'
  	end
	end


	private
  	def post_params
    	params.require(:post).permit(:title, :tweet, :text)
  	end
  

end
