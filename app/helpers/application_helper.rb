module ApplicationHelper
  def other_stream_user(stream)
    return stream.users.first unless stream.users.first == current_user;
    return stream.users.second;
  end

  def get_name(user)
    if user.first
      return user.first
    elsif user.email
      return user.email
    else
      return 'Bob'
    end
  end
end
