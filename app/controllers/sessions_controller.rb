require 'pry'
class SessionsController < ApplicationController 

 def new 
  @user = User.new
  @users = User.all
 end 

 def create

  @user = User.find_by(name: params[:user][:name])
  
  if @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id 
    redirect_to @user
  else 
    redirect_to new_sessions
  end
 end

 def destroy 
  session.clear
  redirect_to root_path

 end


end