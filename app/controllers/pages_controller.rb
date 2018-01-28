class PagesController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]
  # could also do 'except: [:home]'

  before_action :check_if_admin, only: [:admin_view]

  def home
  end

  def new

  end

  def create


  end

  def profile

    # only visible to logged-in users
  end

  def admin_view
    @users = User.all
    # @users.update admin_params
    # redirect_to admin_path
    # only admins get to party
  end

private
# def admin_params
#   params.permit(:name, :email)
# end


end
