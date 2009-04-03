class Admin::AuthController < ApplicationController
  layout 'authentication'
   def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to("/admin")
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end
  

  
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end
  

  
  def index
   
  end


end
