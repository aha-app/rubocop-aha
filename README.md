[![Gem Version](https://badge.fury.io/rb/rubocop-aha.svg)](https://badge.fury.io/rb/rubocop-aha)

# rubocop

Common rubocop configuration for [Aha!](https://www.aha.io) projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-aha'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install rubocop-aha
```

## Usage

Add the following to your project's `.rubocop.yml`:

```
inherit_gem:
  rubocop-aha: lib/config.yml
```

## Contributing

We are unlikely to accept external contributions to change configuration rules. You are welcome to fork or extend for your own purposes if you like the baseline but disagree with some of our settings. :)

## License

MIT
