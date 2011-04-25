class StreamsController < ApplicationController
  layout "application", :except => [:show]

  def index
    @streams = Stream.all
  end

  def show
    render :layout => 'stream'
  end
end
