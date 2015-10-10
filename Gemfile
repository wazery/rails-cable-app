source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', github: 'rails/rails', ref: '53ac41e'
gem 'arel', github: 'rails/arel'
gem 'rack', github: 'rack/rack'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'actioncable', github: 'rails/actioncable'
gem 'faye-rails'

gem 'puma'
gem 'redis'

gem 'rack-cors'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'rubocop'
end
