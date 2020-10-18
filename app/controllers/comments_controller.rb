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

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment, status: :accepted
        
    end 

    private 

    def comment_params
        params.require(:comment).permit!
    end 

end
