class PagesController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]
  # could also do 'except: [:home]'

  # before_action :check_if_admin, only: [:admin_party]

  def home
  end

  def new
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to login_path
  end

  def profile

    # only visible to logged-in users
  end

  # def admin_party
  #   # only admins get to party
  # end

  # private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
