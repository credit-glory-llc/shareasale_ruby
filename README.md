# ShareASale

A Ruby gem for communicating with the ShareASale API

To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shareasale_ruby', github: 'creditsage/shareasale_ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install shareasale_ruby

and run:

    $ bundle install
    $ rails g shareasale_ruby:install

This will generate your config file in `config/initializers/shareasale_ruby.rb`

Provide your auths and configurations.

## Usage

Available API Requests :

    $ ShareasaleRuby::ProgramMaintenance
    $ ShareasaleRuby::Report
    $ ShareasaleRuby::Transaction


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ShareasaleRuby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shareasale_ruby/blob/master/CODE_OF_CONDUCT.md).
