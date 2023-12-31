# typed: true
class UsersController < ApplicationController
  def create
    user = User.new name:'smy'
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      head 404
    end
  end
end
