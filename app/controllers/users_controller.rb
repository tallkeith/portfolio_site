class UsersController < ApplicationController
  def show_users
  	@users = User.all
  end
end
