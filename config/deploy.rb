# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'torapic'
set :repo_url, 'git@bitbucket.org:oame/torapic.git'
set :branch, :master

set :deploy_to, "/var/www/#{fetch(:application)}"

# rbenv
set :rbenv_type, :system
set :rbenv_ruby, '2.1.1'

set :default_env, {
  path: "#{fetch(:rbenv_path)}/shims:#{fetch(:rbenv_path)}/bin:$PATH"
}

# sidekiq
# set :sidekiq_monit_conf_dir, '/etc/monit.d'

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

after :deploy, "foreman:export"
after :deploy, "foreman:restart"

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
