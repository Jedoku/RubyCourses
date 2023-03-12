# frozen_string_literal: true

# Description/Explanation of Chat class
class Member
  attr_accessor :name, :status, :messages

  def initialize(name, messages = [], status = 'offline')
    @name = name
    @messages = messages
    @status = status
  end
end
