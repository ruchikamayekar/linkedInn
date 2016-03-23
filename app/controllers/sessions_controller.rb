class SessionsController < ApplicationController
  def create
    # byebug
    @user = User.from_omniauth(auth_hash)
    # byebug
    sign_in(@user)
    flash[:notice] = "Logged in successfully."
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
