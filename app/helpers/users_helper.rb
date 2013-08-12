module UsersHelper

  def modify_admin_link(user)
    if user == current_user
      "This is you!"
    elsif user.admin?
      link_to 'remove admin', remove_admin_path(user), class: 'small red button radius'
    else
      link_to 'make admin', make_admin_path(user), class: 'small yellow button radius'
    end
  end
end
