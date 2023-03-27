class PostsController < ApplicationController
  before_action :login_required, only: %i[ new ]
   
    def index
      @posts = Post.all 
        @posts = Post.page(params[:page]).reverse_order 
      end
      
        def new
          @post = Post.new
        end

        def create
          @post = Post.new(post_params)
          @post.user_id = current_user.id
          if @post.save
           redirect_to post_path(@post.id)
          else
           render :new
          end
        end
  
          def show
            @post = Post.find(params[:id])
            @comment = Comment.new  #この行を追記
            @comments = @post.comments.page(params[:page]).per(7).reverse_order  #この行を追記
          end

        def edit
          @post = Post.find(params[:id])
        end
            def update
            post = Post.find(params[:id])
            post.update(post_params)
            redirect_to post_path(post.id)
          end

def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
end





private



def post_params
  params.require(:post).permit(:title)
end

def login_required
  redirect_to login_url unless current_user
end
 
 


end