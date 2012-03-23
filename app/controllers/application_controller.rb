class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_data
  
  
  private
  
  def load_data
    @user = current_user
    @blog = Blog.first
  end
  
end
