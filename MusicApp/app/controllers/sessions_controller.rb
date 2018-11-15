class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if user
      login(user)
      redirect_to user_url
    else
      flash.now[:errors] = "NO GO on your credentials"
      redirect_to users_url
    end
  end

  def new

  end

  def destroy
    logout
    redirect_to new_session_url
  end
end
