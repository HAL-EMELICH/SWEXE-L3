class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end
  
  def new
    @profile = Profile.new  #formヘルパーのデータの入れ物になる
  end
  
  def create
    @profile = Profile.new(name: params[:profile][:name], detail: params[:profile][:detail], image: params[:profile][:image])
    if @profile.save
      flash[:notice] = 'Add 1record'
      redirect_to '/' #=>一覧ページにリダイレクトする
    else
      render 'new', status: :unprocessable_entity
    end
  end
  
  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    flash[:notice] = '1 record deleted'
    redirect_to '/'
  end
  
  def show
    @profile = Profile.find(params[:id])
  end
  
  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'update profile'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def profile_params
    params.require(:profile).permit(:name, :detail, :image)
  end
end
