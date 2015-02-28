# Scoutie

A rake task to check the status code of a JSON request

![alt tag](https://github.com/Brit200313/scoutie/blob/master/img/scoutie.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scoutie'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scoutie

## Usage

Have a JSON API you want to test as you're coding along? 

Simply run:

    $ rake scoutie[url]

and Scoutie will return a response code and recommendation on proceeding. 

## Contributing

1. Fork it ( https://github.com/[my-github-username]/scoutie/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
