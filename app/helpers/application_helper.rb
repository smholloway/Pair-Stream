module ApplicationHelper
  def other_stream_user(stream)
    return stream.users.first unless stream.users.first == current_user;
    return stream.users.second;
  end
end
