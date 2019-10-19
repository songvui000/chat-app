set :user, "vagrant"
server "3.15.3.18", user: 'ubuntu', roles: [:app, :web, :db], :primary => true
set :rails_env, 'staging'