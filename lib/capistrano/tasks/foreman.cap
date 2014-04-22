namespace :foreman do
  desc "Export the Procfile to Ubuntu's upstart scripts"
  task :export do
    on roles(:app) do
      within release_path do
        execute :sudo, <<-EOC
          PATH=$PATH $(rbenv which bundle) exec \
          foreman export upstart /etc/init -f ./Procfile \
            -a #{fetch(:application)} \
            -u webadmin -l /var/log/#{fetch(:application)}
        EOC
      end
    end
  end

  desc "Start the application services"
  task :start do
    on roles(:app) do
      execute :sudo, "start #{fetch(:application)}"
    end
  end

  desc "Stop the application services"
  task :stop do
    on roles(:app) do
      execute :sudo, "stop #{fetch(:application)}"
    end
  end

  desc "Restart the application services"
  task :restart do
    on roles(:app) do
      execute :sudo, "start #{fetch(:application)} || sudo restart #{fetch(:application)}"
    end
  end

end
