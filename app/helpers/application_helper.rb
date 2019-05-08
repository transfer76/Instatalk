module ApplicationHelper
  def user_online
    User.online.map(&:nickname).join(', ')
  end
end
