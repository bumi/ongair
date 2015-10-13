# Ongair

A ruby wrapper around the Ongair API


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ongair'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ongair

## Usage

```ruby

  Ongair.configure do |c|
    c.token = ''
  end

  message = Ongair::Message.new(phone_number: 'number', text: 'hello world')
  message.deliver!

```
