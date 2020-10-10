class PostsController < ApplicationController
    def index 
        posts = Post.all 
        render json: posts 
    end 

    def create
        post = Post.create(post_params)
        if post.valid?
            render json: post, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end
    
    private 

    def post_params
        params.require(:post).permit!
    end

    
end
