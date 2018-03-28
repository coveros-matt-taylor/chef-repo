# Amazon AWS
knife[:aws_credential_file] = "/home/centos/aws.txt"
# set current path and path to cookbooks
# current_dir = File.dirname(__FILE__)
# cookbook_path ["#{current_dir}/cookbooks"]
cookbook_path ['~/chef-repo/cookbooks']
client_key '~/chef-repo/.chef/aws.txt'
# chef_server_url `https://172.31.2.181/`
