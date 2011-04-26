class HomeController < ApplicationController
  layout "application"

  def index
    if user_signed_in?
      redirect_to :action => 'main'
    end
  end
  
  def main
    if not user_signed_in?
      redirect_to :action => 'index'
    end
    
    @streams = current_user.streams
  end

end
