# US2018Tax

This gem is meant to calculate the United States Federal income tax based on net income.  It can calculate both the tax and the gross income, there are options with or with out a standard deduction.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'US_2018_Tax'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install US_2018_Tax

## Usage

There are several functions of this calculator.

To get the amount of tax to be paid, there are two options, one with a standard deduction and one without:

  ```ruby
  US_2018_Tax::Tax.new(net_income: 100000).calculate
  US_2018_Tax::Tax.new(net_income: 100000).calculate_with_standard_deduction
  ```

To get the amount of income after tax(gross income), there are two options as well:

  ```ruby
  US_2018_Tax::Tax.new(net_income: 100000).gross_income
  US_2018_Tax::Tax.new(net_income: 100000).gross_with_deduction
  ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/US_2018_Tax. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the US2018Tax project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/US_2018_Tax/blob/master/CODE_OF_CONDUCT.md).
