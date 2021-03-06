root = "/var/www/smart-kiosk/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.err.log"
stdout_path "#{root}/log/unicorn.out.log"

listen "/tmp/unicorn.smart_kiosk.sock"
worker_processes 4
timeout 30

before_exec do |server|
  ENV["BUNDLE_GEMFILE"] = "#{root}/Gemfile"
end
