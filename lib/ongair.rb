require "ongair/version"

require 'active_support/configurable'
require 'rest-client'

require 'ongair/message'
require 'ongair/request'
module Ongair
  include ActiveSupport::Configurable

end
Ongair.configure do |c|
  c.base_url = 'https://app.ongair.im/api/v1/base'
end
