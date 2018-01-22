class UsersController < ApplicationController
  def new
  end

  def create

    user = User.create user_params
    if user.persisted?
      # Log the user in automatically
      session[:user_id] = user.id
      redirect_to profile_path
    else
      # bad credentials/unsuccessful login
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
  end

  def destroy
  end

  def edit
    # @user = User.find params[:user_id]

  end

  def update
    user = @current_user
    user.update user_account_params
    redirect_to user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  private
  def user_account_params
    params.require(:user).permit(:name, :email, :age, :height, :weight)
  end

end
