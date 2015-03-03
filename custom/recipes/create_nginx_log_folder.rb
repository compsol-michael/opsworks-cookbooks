#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#

  script "create_nginx_log_folder" do
    interpreter "bash"
    user "root"
    cwd "/var/log"
    code <<-EOH
    mkdir nginx;
    touch ./nginx/access.log;
    touch ./nginx/error.log;
    chown -R deploy:www-data ./nginx;

    EOH
  end