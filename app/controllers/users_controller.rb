class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @memos = current_user.memos
  end
end
