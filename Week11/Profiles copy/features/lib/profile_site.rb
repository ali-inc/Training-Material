require_relative 'pages/profile_admin'
require_relative 'pages/profile_homepage'
require_relative 'pages/profile_tabs'
require_relative 'pages/profile_user'

module ProfileSite

  def profile_admin
    ProfileAdmin.new
  end

  def profile_homepage
    ProfileHomepage.new
  end

  def profile_tabs
    ProfileTabs.new
  end

  def profile_user
    ProfileUser.new
  end

end
