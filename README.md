[![Build Status](https://travis-ci.org/hallucinations/array_zip_with.svg?branch=master)](https://travis-ci.org/hallucinations/array_zip_with)
[![Code Climate](https://codeclimate.com/github/hallucinations/array_zip_with/badges/gpa.svg)](https://codeclimate.com/github/hallucinations/array_zip_with)
[![Test Coverage](https://codeclimate.com/github/hallucinations/array_zip_with/badges/coverage.svg)](https://codeclimate.com/github/hallucinations/array_zip_with/coverage)

# Array#zip_with

Array#zip_with method inspired by [Haskell's zipWith function](http://zvon.org/other/haskell/Outputprelude/zipWith_f.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array_zip_with'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array_zip_with

## Usage

### With block

```ruby
a = [1, 2, 3]
a.zip_with([3, 2, 1]) { |x, y| x + y } # => [4, 4, 4]
```

### With block

```ruby
a = [1, 2, 3]
a.zip_with([3, 2, 1], :+) # => [4, 4, 4]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/array_zip_with. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

