package 'httpd' do
  action :install
end
 
file '/var/www/html/index.html' do
  content "Ktexperts is a knowledge sharing platform"
  action :create
end
 
service 'httpd' do
  action [ :enable, :start ]
end
