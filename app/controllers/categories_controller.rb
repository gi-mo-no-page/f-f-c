class CategoriesController < ApplicationController
  def index
  end

  def show
    @comics = Comic.where(magazine_id: params[:id])
  end
end
