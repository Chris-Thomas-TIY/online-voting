class LoginController < ApplicationController
  def new

  end

  def create
    constituent = Constituent.find_by_email(params[:email])
    if constituent && constituent.authenticate(params[:password])
      session[:constituent_id] = constituent.id
      flash[:notice] = "Welcome!"
      redirect_to bills_path
    else
      flash.now[:notice] = "Invalid e-mail or password."
      redirect_to login_path
    end
  end

  def logout
  end


end
