class StreamsController < ApplicationController
  layout "application", :except => [:show]
  before_filter :authenticate_user!

  def index
    @streams = current_user.streams
  end

  def show
    @stream = Stream.find(params[:id])
    @other_user = other_stream_user(@stream);
    @posts = @stream.posts
    
    render :layout => 'stream'
  end
end
