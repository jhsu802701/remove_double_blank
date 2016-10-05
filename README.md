# RemoveDoubleBlank

[![Gem Version](https://badge.fury.io/rb/remove_double_blank.svg)](https://badge.fury.io/rb/remove_double_blank)
[![Build Status](https://travis-ci.org/jhsu802701/remove_double_blank.svg?branch=master)](https://travis-ci.org/jhsu802701/remove_double_blank)
[![Dependency Status](https://gemnasium.com/badges/github.com/jhsu802701/remove_double_blank.svg)](https://gemnasium.com/github.com/jhsu802701/remove_double_blank)
[![Code Climate](https://codeclimate.com/github/jhsu802701/remove_double_blank/badges/gpa.svg)](https://codeclimate.com/github/jhsu802701/remove_double_blank)
[![Test Coverage](https://codeclimate.com/github/jhsu802701/remove_double_blank/badges/coverage.svg)](https://codeclimate.com/github/jhsu802701/remove_double_blank/coverage)

## Purpose

The RemoveDoubleBlank gem reduces groups of consecutive blank lines into just one blank line.

This gem can be used to make source code RuboCop-compliant.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'remove_double_blank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install remove_double_blank

## Usage

Remove groups of two more more blank lines in a file with this command:
```
RemoveDoubleBlank.update(filename)
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/remove_double_blank. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Bash Scripts
### Testing this gem
After you download this source code, enter `sh gem_test.sh` to set up and test this gem.

### Testing this gem's source code
Enter `sh code_test.sh` to test the quality of this gem's source code.
### Running this gem in irb
Enter `sh gem_console.sh`.

### Installing this gem
Enter `sh gem_install.sh`.
### Testing the gem, source code, and installation process
Enter `sh all.sh` to run the gem_test.sh, code_test.sh, and gem_install.sh scripts.
