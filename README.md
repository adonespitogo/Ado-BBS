***This is the repository for Ado-BBS rails engine.***

# Ado-BBS
It is a rails 5+ api-only forum engine with PHP+HTML front-end which you can drop into cheap php/html hosting sites.

## Use Case
I have a rails app which is the base API for my business transactions. I wanted to create a forum site using a diferrent domain (ie: forum.mydomain.com), but still want to use the users' data in my main rails app. I've looked into many forum engines and none of them seem to fit my need.

The solution I can think of is to create a separate front-end static files that I can drop into cheap hosting sites and communicate to my main rails backend API.

## Dependencies
Currently, we depend on `device_auth_token` gem for authentication using ***email/password combination only*** and `rack-cors` gem for ajax requests to pass. Social media login maybe supported in the future.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'device_auth_token'
gem 'rack-cors'
gem 'adobbs'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install adobbs
```

## Usage
Create initializer in `config/initializers/adobbs.rb` and configure Adobbs:
```ruby
Adobbs.user_class = "User" # Your app's user class name. Default: "User"
```

Install migrations:
```shell
$ bin/rails adobbs:install:migrations
$ rake db:migrate
```

Mount to `config/routes.rb`:
```ruby
mount Adobbs::Engine => "/api/adobbs"
```

Configure rack-cors in `config/environment/production.rb`
```ruby
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'forum.mydomain.com' # or 'http://localhost:3000' for development.rb
      resource '*',
        :headers => :any,
        :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
        :methods => [:get, :post, :put, :patch, :delete, :options, :head],
        :credentials => true
    end
  end
```

***TODO:*** Configure devise gem

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

