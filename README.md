# rw_validator::Validator

A fast minimal ruby gem to validate Rwandan National Ids and Phone Numbers(all carriers) using Regular Expressions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rw_validator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rw_validator

## Usage

- Validating Phone Number

  ```ruby
  require "rw_validator"

  RwValidator.is_phone_number? "0788854444" // true
  RwValidator.is_phone_number? "0778854444" // false

  ```

- Validating National ID

  ```ruby

  RwValidator.is_national_id? "1199672222000040" // true
  RwValidator.is_national_id? "1201772222000040" // false

  ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/knowbee/rw-validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/knowbee/rw-validator/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rw_validator::Validator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/knowbee/rw-validator/blob/master/CODE_OF_CONDUCT.md).
