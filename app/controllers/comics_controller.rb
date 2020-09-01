class ComicsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_comic, only: [:edit, :update, :show, :destroy]
    def index
      @comics = Comic.all
    end
  
    def new
      @comic = Comic.new
    end
  
    def create
      @comic = Comic.new(comic_params)
      if @comic.save
        redirect_to root_path
      else
        render :new
      end
    end
  
    def show
      @post = Post.new
      @posts = @comic.posts.includes(:user)
    end

    def edit
    end

    def update
      if @comic.update(comic_params)
        redirect_to comic_path(@comic.id)
      else
        render :edit
      end
    end
  
    def destroy
      if @comic.destroy
       redirect_to root_path
      else
        render :show
      end
    end

    def search
      @comics = Comic.search(params[:keyword])
    end
  
    private

    def comic_params
      params.require(:comic).permit(:image, :name, :author,:volume, :magazine_id, :genre_id).merge(user_id: current_user.id)
    end

    def move_to_index
      unless user_signed_in?
        redirect_to action: :index
      end
    end

    def set_comic
      @comic = Comic.find(params[:id])
    end

end
