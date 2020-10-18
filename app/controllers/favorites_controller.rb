class FavoritesController < ApplicationController
    def index 
        favorites = Favorite.all 
        render json: favorites 
    end
    
    def create
        favorite = Favorite.create(favorite_params)
        if favorite.valid?
            render json: favorite, status: :created 
        else
            render json: {error: 'failed to create'}, status: :not_acceptable
        end
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.delete

        render json: favorite, status: :created
    end 
    
    private 

    def favorite_params
        params.require(:favorite).permit!
    end 

end
