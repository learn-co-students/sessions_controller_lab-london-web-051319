class SessionsController < ApplicationController

  def new
  end

  # def home
  # end

  def create
     if params[:name].nil? || params[:name].empty?
        redirect_to sessions_new_path
     else
        session[:name] = params[:name]
        redirect_to '/'
    end
  end

  def destroy
     unless session[:name].nil?
        session.delete :name
        redirect_to '/'
     else
        redirect_to '/'
     end
  end

end
