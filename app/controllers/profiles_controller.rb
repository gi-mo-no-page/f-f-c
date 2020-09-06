class ProfilesController < ApplicationController


  def edit
    @user = User.find(params[:id])
    #@profile = Profile.find(params[:id])

    @profile = Profile.where(user_id: current_user.id)
  end

  def update
    @profile = Profile.where(user_id: current_user.id)
    if @profile.update(profiles_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def profiles_params
    params.require(:profile).permit(:image, :introduction, :like_category, :best_comic)
  end



end
