class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @item
  end

end
