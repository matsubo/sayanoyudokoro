# Sayanoyudokoro (前野原温泉 さやの湯処)

![example workflow](https://github.com/matsubo/sayanoyudokoro/actions/workflows/main.yml/badge.svg)

Welcome to sayanoyudokoro gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/sayanoyudokoro`. To experiment with that code, run `bin/console` for an interactive prompt.

[Sayanoyudokoro](https://www.sayanoyudokoro.co.jp/) shows the degree of congestion in the hall but the congestion is shown by image so that it's hard to analyze by computer.

This gem returns congestion as a numeric number for analysis.

![image](https://user-images.githubusercontent.com/98103/216239694-350dfbce-ee29-4ae9-982d-9599c008b229.png)


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add sayanoyudokoro

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install sayanoyudokoro

## Usage


```ruby
irb(main):003:0> require 'sayanoyudokoro'
=> true
irb(main):004:0> Sayanoyudokoro::Congestion.current_status
=> {:time=>2023-02-02 14:00:00 +0900, :degree=>3}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sayanoyudokoro.
