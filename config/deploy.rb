default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
ssh_options[:forward_agent] = true

set :application, "nann.peterwarnock.com"
set :scm, "git"
set :repository,  "git@github.com:pwarnock/nann.peterwarnock.com.git"
set :branch, "master"
set :user, "nann"
set :deploy_to, "/home/nann/nann.peterwarnock.com"
set :use_sudo, false 
set :deploy_via, :remote_cache

server "nann.peterwarnock.com", :app, :web, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

