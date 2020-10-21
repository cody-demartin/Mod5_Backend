class PostsController < ApplicationController
    def index 
        posts = Post.all
        # posts = sort_by_age(posts)
        render json: posts.with_attached_request
    end 

    def create
        post = Post.create(user_id: params[:user_id], title: params[:title], body: params[:body], request: params[:request])
        if post.valid?
            render json: post, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post, status: :accepted
        
    end 

    def destroy
        post = Post.find(params[:id])
        post.delete
        render json: post, status: :accepted
    end 
    
    private x   

    def post_params
        params.require(:post).permit(:user_id, :title, :body, :request, :score)
    end


end
