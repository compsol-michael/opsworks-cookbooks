#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#

  script "restart_nginx" do
    interpreter "bash"
    user "root"
    cwd "/"
    code <<-EOH
    /usr/sbin/invoke-rc.d nginx restart;
    EOH
  end
