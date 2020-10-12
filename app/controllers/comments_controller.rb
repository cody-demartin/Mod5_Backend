class CommentsController < ApplicationController
    
    def index 
        comments = Comment.all 
        render json: comments 
    end
    
    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            render json: comment, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end 

    private 

    def comment_params
        params.require(:comment).permit!
    end 

end
