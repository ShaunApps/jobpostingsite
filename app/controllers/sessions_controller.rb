class SessionsController < ApplicationController

  def login
    if @current_user
      redirect_to jobs_path
    end
  end

  def logout
    session[:ex_id] = nil
    session[:user_id] = nil
    CASClient::Frameworks::Rails::Filter.logout(self)
  end


  def forgot_password
    redirect_to "http://people.wyncode.co/forgot_password" and return
  end

end
