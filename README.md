# Adobbs
Adobbs rails engine - API for Adobbs

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

## Installation
Add this line to your application's Gemfile:

```ruby
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

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

