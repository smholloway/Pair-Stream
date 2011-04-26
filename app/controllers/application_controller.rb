class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def other_stream_user(stream)
    return stream.users.first unless stream.users.first == current_user;
    return stream.users.second;
  end
end
