class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to (session[:name].nil? || session[:name].empty?) ? sessions_new_path : "/"
  end

  def destroy
    session.delete :name
  end
end
