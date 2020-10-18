class VotesController < ApplicationController

    def index
        votes = Vote.all 
        render json: votes 
    end 

    def create
        vote = Vote.create(vote_params)
        if vote.valid?
            render json: vote, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end 

    def destroy
        vote = Vote.find(params[:id])
        vote.delete
        render json: vote, stauts: :accepted
    end 

    private 

    def vote_params
        params.require(:vote).permit!
    end
end
