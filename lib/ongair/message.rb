require 'active_support/string_inquirer'
require 'virtus'
module Ongair
  class Message
    include Virtus.model
    attribute :name, String
    attribute :id, String
    attribute :name, String
    attribute :profile_pic, String
    attribute :notification_type, String, default: 'Message'
    attribute :text, String
    attribute :image, String
    attribute :account, String
    attribute :phone_number, String
    attribute :caption, String
    attribute :sent, Boolean

    def type
      ActiveSupport::StringInquirer.new self.notification_type.to_s.sub('Received', '').downcase
    end

    def type=(value)
      self.notification_type = "#{value.to_s.capitalize}Received"
    end

    def deliver_to(phone_number)
      response = Ongair::Request.new(self).deliver_to(phone_number)
      self.id = response['id']
      self.sent = response['sent']
    end

    def deliver!
      response = Ongair::Request.new(self).deliver!
      self.id = response['id']
      self.sent = response['sent']
    end

  end
end
