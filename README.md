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

  RwValidator.phone_number? "0788854444" // true
  RwValidator.phone_number? "0778854444" // false

  ```

- Validating National ID

  ```ruby

  RwValidator.national_id? "1199672222000040" // true
  RwValidator.national_id? "1201772222000040" // false

  ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/knowbee/rw-validator-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/knowbee/rw-validator-gem/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rw_validator::Validator project's codebases, and issue trackers is expected to follow the [code of conduct](https://github.com/knowbee/rw-validator-gem/blob/master/CODE_OF_CONDUCT.md).
