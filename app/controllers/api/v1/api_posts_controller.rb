class Api::V1::ApiPostsController < ApplicationController
  skip_before_action :logged_in?, only: [:api_post, :api_nutrition, :api_needs]

  def api_post
    spoontacular_api_key = ENV['spoontacular_api_key']
    headers = {
      "x-rapidapi-host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
      "x-rapidapi-key": spoontacular_api_key
    }
    @data = JSON.parse(RestClient.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?timeFrame=#{params['time_frame']}&targetCalories=#{params['calories']}&diet=#{params['diet_query']}", headers))
    if @data                          
      render json: @data, status: :ok
    else 
      render json: @data.errors, status: :unprocessable_entity
    end
  end

  def api_nutrition
    edamam_key = ENV['edamam_key']
    headers = {
      "x-rapidapi-host": "edamam-edamam-nutrition-analysis.p.rapidapi.com",
      "x-rapidapi-key": edamam_key
    }
    @data = JSON.parse(RestClient.get("https://edamam-edamam-nutrition-analysis.p.rapidapi.com/api/nutrition-data?ingr=#{params['quantity']}%20#{params['portion']}%20#{params['ingredient']}", headers))
    if @data                          
      render json: @data, status: :ok
    else 
      render json: @data.errors, status: :unprocessable_entity
    end
  end

  def api_needs
    spoontacular_api_key = ENV['spoontacular_api_key']
    headers = {
      "x-rapidapi-host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
      "x-rapidapi-key": spoontacular_api_key
    }
    @data = JSON.parse(RestClient.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/search?diet=#{params['diet_query']}&excludeIngredients=#{params['excluded_ingredients']}&number=25&offset=0&query=#{params['query']}", headers))
    if @data                          
      render json: @data, status: :ok
    else 
      render json: @data.errors, status: :unprocessable_entity
    end
  end

  private

  def api_params
    params.permit(:time_frame, :calories, :quantity, :portion, :ingredient, :query, :diet_query, :excluded_ingredients)
  end
  
end
