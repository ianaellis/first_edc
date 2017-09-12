class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.paginate(page: params[:page])
  end
 
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to your User Profile"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    # authorize! :assign_roles, @user if params[:user][:assign_roles]
    @user = User.find(params[:id])
  end

  def update
    authorize! :assign_roles, @user if params[:user][:assign_roles]
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      # sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User has been deleted."
    redirect_to users_path
  end

  def permission
    # raise User.where(params[:id]).inspect
    @user = User.find(params[:user_id])
  end



private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user_?(@user)
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

  # Add after updating, because attr_accessor has been deprecated
  def user_params
    params.require(:user).permit(:roles, :user_study_site, :email, :password, :password_confirmation, :remember_me, :roles_mask, :name, :site_study_coordinator, :project_coordinator, :site_pi, :lead_pi_sc, :vetpals_facilitator, :other_site_investigators)
  end
  
end
