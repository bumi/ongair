require 'rest-client'
require 'json'
module Ongair

  class Request
    attr_reader :message

    ENDPOINTS = {
      'message' => '/send',
      'image' => '/send_image'
    }
    ENDPOINTS.default = '/send'

    def initialize(message)
      @message = message
    end

    def deliver!
      JSON.parse RestClient.post self.url, self.message.attributes, self.headers
    end

    def deliver_to(phone_number)
      params = self.message.attributes.merge(phone_number: phone_number)
      JSON.parse RestClient.post self.url, params, self.headers
    end

    def headers
      {'Accept' => 'application/json', 'Authorization' => "Token token=#{Ongair.config.token}"}
    end

    def url
      Ongair.config.base_url + ENDPOINTS[self.message.type]
    end

  end
end
