# Diced Turnips

Runs your turnips in parallel using [`parallel_tests`][parallel-tests].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'diced-turnips'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diced-turnips

## Usage

You can run it using `parallel_turnip`:

```
parallel_turnip spec
```

Or `parallel_test`:


```
parallel_test spec --type turnip
```

Or as a Rake task:

```
rake parallel:turnips
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment. Run
`bundle exec diced-turnips` to use the gem in this directory, ignoring other
installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](rubygems).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/[USERNAME]/diced-turnips. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant][covenant] code of conduct.

## License

The gem is available as open source under the terms of the [MIT License][license].

[parallel-tests]: https://github.com/grosser/parallel_tests
[rubygems]:       https://rubygems.org
[covenant]:       http://contributor-covenant.org
[license]:        http://opensource.org/licenses/MIT
