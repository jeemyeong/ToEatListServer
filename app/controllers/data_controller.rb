class DataController < ApplicationController
  def food
    @foods = Food.all
  end
  def make
    
  end
  def making
    food = Food.new    
    food.name = params[:name]
    food.category = params[:category]
    food.description = params[:description]
    food.restaurant = params[:restaurant]
    food.loca_simple = params[:loca_simple]
    food.loca_map = params[:loca_map]
    food.image_file = params[:image_file]
    food.save
    redirect_to '/data/food'
  end
  def edit
    @food = Food.find(params[:id])
  end
  def editing
    food = Food.find(params[:id])
    
    food.name = params[:name]
    food.category = params[:category]
    food.description = params[:description]
    food.restaurant = params[:restaurant]
    food.loca_simple = params[:loca_simple]
    food.loca_map = params[:loca_map]
    unless params[:image_file].nil?
      food.image_file = params[:image_file]
    end
    food.save
    redirect_to '/data/food'

  end
  def destroy
    Food.find(params[:id]).destroy
    redirect_to '/data/food'
    
  end
end
