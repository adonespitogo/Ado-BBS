***This is the repository for Ado-BBS rails engine.***

# Ado-BBS
It is a rails 5+ api-only forum engine with PHP+HTML front-end which you can drop into cheap php/html hosting sites.

## Use Case
I have a rails (API-only) app which is the base API for my business transactions. I wanted to create a forum site using a diferrent domain (ie: forum.mydomain.com), outside of my rails app and to constraint usage of the forum only to my users/customers. I've looked into many forum engines and none of them seem to fit my need.

The solution I can think of is to create an engine for my rails app and separate [front-end static files](https://github.com/adonespitogo/Ado-BBS-angular) that I can drop into cheap hosting sites and communicate to my main rails backend API.

## Dependencies
Currently, we depend on `devise_token_auth` gem for authentication using ***email/password combination only***, `rack-cors` gem for ajax requests to pass, `kaminari` and `jbuilder` to build API reponses. Social media login maybe supported in the future.

## Installation
Add these lines to your application's Gemfile:

```ruby
gem 'devise_token_auth'
gem 'rack-cors', require: 'rack/cors'
gem 'jbuilder', '~> 2.5'
gem 'kaminari'
gem 'adobbs'
```

And then execute:
```bash
$ bundle
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

## Frontend Setup

Please follow instructions in the [Ado-BBS-angular](https://github.com/adonespitogo/Ado-BBS-angular) repository.

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

