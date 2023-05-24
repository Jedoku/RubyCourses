# frozen_string_literal: true

# Class
class Message
  # Class
  class Attachments
    attr_accessor :message

    def initialize(message)
      @message = message
    end

    def attach
      message.attachments << self
    end

    def choose
      raise NotImplementedError, 'Not implemented yet'
    end
  end
end
