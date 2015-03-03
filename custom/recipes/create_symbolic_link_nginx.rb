#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#

  script "create_symbolic_link_nginx" do
    interpreter "bash"
    user "root"
    cwd "/"
    code <<-EOH
    ln -sf /srv/www/meza_webapp/current/etc/nginx/sites-available/meza-https /etc/nginx/conf.d/meza.conf;
    service nginx restart;
    EOH
  end
