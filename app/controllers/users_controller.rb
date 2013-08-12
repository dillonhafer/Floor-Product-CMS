class UsersController < ApplicationController
  before_filter :require_admin, except: ['my_account']

  def index
    @users = User.all
  end
end
