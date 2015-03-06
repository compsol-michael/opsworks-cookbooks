cron "empty_log_files" do
	user "root"
  	hour "0"
  	minute "0"
  	weekday "6"
  	command "
  		> /var/log/nginx/error.log;
  		> /var/log/nginx/access.log;
  		> /var/log/nginx/meza-wwwd.log;
  		> /var/log/nginx/meza-serviced.log;
  	"
end