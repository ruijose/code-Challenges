class SessionsController < ApplicationController
  def home
  end

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user 
      login user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
