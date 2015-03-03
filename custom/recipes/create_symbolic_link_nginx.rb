#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#


node[:deploy].each do |application, deploy|
  script "create_symbolic_link_nginx" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    ln -sf etc/nginx/sites-available/meza-https /etc/nginx/conf.d/meza.conf;
    EOH
  end
end      