class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    if user
      render json: user, include: :items
    end
  end
end
