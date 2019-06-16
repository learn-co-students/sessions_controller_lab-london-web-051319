class SessionsController < ApplicationController

  def index
  end

  def new

  end

# def create
#   # user = User.find_by(name: params[:name])
#   if !session[:name] || session[:name].empty?
#   redirect_to(controller: 'sessions', action: 'new')
# elsif
#   # session[:name] = params[:name]
#   # redirect_to '/'
#   session[:name] = params[:name]
#     redirect_to controller: 'application', action: 'hello'
#
# end
# end
def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end


  def destroy
    session.delete :name
  end

  # private
  #
  # def session_params
  #   params.require[:session].permit[:name]
  # end




end
