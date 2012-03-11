class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  
  private
  
  def load_data
    @blog = Blog.first
  end
  
end
