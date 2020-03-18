class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)

    if user
      redirect_to root_path
      flash[:success] = "Welcome #{user.name.capitalize}!"
    else
      flash.now[:danger] = 'Name is invalid.'
      render 'new'
    end
  end

  def destroy

  end
end
