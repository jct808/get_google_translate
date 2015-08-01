# GetGoogleTranslate

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/get_google_translate`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Before Installation 

Due to Google API payment issue, You have to appy Public API access Key from Google. https://console.developers.google.com
After you can use this gem with key and also enable the "Translate API" for google. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_google_translate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get_google_translate

## Usage

GetGoogleTranslate::Translate.new(key, soure, target, text)

example:

GetGoogleTranslate::Translate.new('AIzaSyAULB3hd-LiCaCHRRvZp_-AJUjoAm2jlJE', 'en', 'ja', "How's the weather today in Tokyo!!")

どのように天気は東京で、今日です！

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jct808/get_google_translate. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

