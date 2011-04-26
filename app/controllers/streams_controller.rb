class StreamsController < ApplicationController
  layout "application", :except => [:show]
  before_filter :authenticate_user!

  def index
    @streams = current_user.streams
  end

  def show
    render :layout => 'stream'
  end
end
