# Ongair API wrapper

A ruby wrapper for the [ongair.im](http://ongair.im) API that allows you to send and receive chat messages.  
Currently ongair supports whatsapp and wechat. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ongair'
```

Or install it yourself as:

    $ gem install ongair

## Usage

```ruby

  # configure your API token
  Ongair.configure do |c|
    c.token = ''
  end

  # receiving messages:
  message = Ongair::Message.new(params) # simply initialize a new message with the params from the ongair webhook
  message.type.image?
  message.text
  message.image
  # see lib/ongair/message.rb for details

  # sending messages (currently text and images are supported)
  message = Ongair::Message.new(phone_number: 'number', text: 'hello world') # initialize a new message with the params described in the ongair API
  message.deliver! # or message.deliver_to('4912345678')

```

## ToDo:

* support for more ongair message endpoints
* support for handling contacts
* support for groups
* sending broadcasts
* support for message receipts 

Want to help? :green_heart:

------------

Built with love by [@njirap](https://twitter.com/njirap) and [@bumi](https://twitter.com/bumi) in Nairobi and released under the MIT-Licence.

