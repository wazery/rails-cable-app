# Load the redis.yml configuration file
redis_config = YAML.load_file(Rails.root + 'config/redis/cable.yml')[Rails.env]

# Connect to Redis using the redis_config host and port
if redis_config
  Redis = Redis.new(host: redis_config['host'], port: redis_config['port'], password: redis_config['password'])
end
