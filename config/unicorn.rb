RAILS_ROOT = File.expand_path("../..", __FILE__)

application = 'torapic'
shared_path = "/var/www/#{application}/shared"

listen "/tmp/#{application}_unicorn.sock"
pid "#{shared_path}/tmp/pids/unicorn.pid"

stderr_path "#{shared_path}/log/unicorn.log"
stdout_path "#{shared_path}/log/unicorn.log"

worker_processes 2
timeout 180

# no downtime
preload_app true

before_fork do |server, worker|
  old_pid = "#{shared_path}/tmp/pids/unicorn.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
