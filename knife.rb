# Amazon AWS
knife[:aws_credential_file] = "/home/centos/aws.txt"
# set current path and path to cookbooks
current_dir = File.dirname(__FILE__)
cookbook_path ["#{current_dir}/cookbooks"]
