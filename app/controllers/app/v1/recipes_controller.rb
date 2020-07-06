class Api::V1::RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def create
        recipe = Recipe.create(params)
        render json: recipe
    end

    def update
        recipe = Recipe.find(params[:id])
        recipe.update!(recipe_params)
        redirect_to recipe
    end

    private
    
    def recipes_params
        params.require(:recipe).permit(:title, :description, :author, :image, :ingredients, :instructions)
    end

end