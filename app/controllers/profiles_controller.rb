class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
    @user = User.find(params[:user_id])
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to user_path(@profile.user.id)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    
    if @profile.update(profiles_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy

  end

  private
  def profile_params
    params.require(:profile).permit(:image, :introduction, :like_category, :best_comic).merge(user_id: current_user.id)
  end

  def profiles_params
    params.require(:profile).permit(:image, :introduction, :like_category, :best_comic)
  end



end
