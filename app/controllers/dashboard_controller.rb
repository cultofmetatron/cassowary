class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_data

  def index
    
  end
end
