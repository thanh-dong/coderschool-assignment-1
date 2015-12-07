class FoodsController < ApplicationController
  def index
    if params[:menu_id] && params[:id]
      @menu = Menu.find(params[:menu_id])
      @food = @menu.foods.find(params[:id])
    else
      @food = Food.find_all
    end
  end

  def show
  end
end
