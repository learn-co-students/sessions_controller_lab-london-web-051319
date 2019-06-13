class SessionsController < ApplicationController
  def new
  end
  def create
    s = session
    s[:name] = params[:name]
    redirect_to ( (s[:name].nil? || s[:name].empty?) ? sessions_new_path : "/")

  end
  def destroy
    session.delete :name
  end
end
