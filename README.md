[![Build Status](https://travis-ci.org/hallucinations/array_zip_with.svg?branch=master)](https://travis-ci.org/hallucinations/array_zip_with)
[![Code Climate](https://codeclimate.com/github/hallucinations/array_zip_with/badges/gpa.svg)](https://codeclimate.com/github/hallucinations/array_zip_with)

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

### With symbol

```ruby
a = [1, 2, 3]
a.zip_with([3, 2, 1], :+) # => [4, 4, 4]
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

