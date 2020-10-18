class CommentVotesController < ApplicationController
    
    def index
        comment = CommentVote.all 
        render json: comment
    end 

    def create
        commentVote = CommentVote.create(vote_params)
        puts (vote_params)
        if commentVote.valid?
            render json: commentVote, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end 
    

    def destroy
        commentVote = CommentVote.find(params[:id])
        commentVote.delete
        render json: commentVote, status: :accepted
    end 

    private 

    def vote_params
        params.require(:comment_vote).permit!
    end
end
