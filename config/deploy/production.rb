set :stage, :production

server '127.0.0.1', user: 'deploy', roles: %w{web blog}