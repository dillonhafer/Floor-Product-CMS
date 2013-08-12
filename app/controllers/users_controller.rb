class UsersController < ApplicationController
  before_filter :require_admin, except: ['my_account']

  def index
    @users = User.all
  end

  def make_admin
    user = User.find params[:id]
    user.update_attributes(admin: true)
    redirect_to users_path
  end

  def remove_admin
    user = User.find params[:id]
    user.update_attributes(admin: false)
    redirect_to users_path
  end
end
