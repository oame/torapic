lock '3.2.1'

set :application, 'torapic'
set :repo_url, 'git@bitbucket.org:oame/torapic.git'
set :branch, :master

set :deploy_to, "/var/www/#{fetch(:application)}"

# SSH
set :pty, true
SSHKit.config.command_map[:rake]  = "bundle exec rake"
SSHKit.config.command_map[:rails] = "bundle exec rails"

# rbenv
set :rbenv_type, :system
set :rbenv_ruby, '2.1.1'

set :default_env, {
  path: "#{fetch(:rbenv_path)}/shims:#{fetch(:rbenv_path)}/bin:$PATH"
}

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for keep_releases is 5
# set :keep_releases, 5

after :deploy, "nginx:export"
after :deploy, "nginx:reload"
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
