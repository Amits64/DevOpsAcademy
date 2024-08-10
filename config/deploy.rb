# config/deploy.rb

lock '3.16.0'

set :application, 'devops-academy'
set :repo_url, 'git@github.com:amits64/DevopsAcademy.git'

# Default branch is :master
set :branch, 'main'

# Directory where the app will be deployed
set :deploy_to, '/var/www/devops-academy'

# Default value for :linked_files is []
append :linked_files, 'config/secrets.yml', 'config/database.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Number of releases to keep
set :keep_releases, 5
