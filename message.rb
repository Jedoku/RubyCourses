# frozen_string_literal: true

# Description/Explanation of Chat class
class Messege
  attr_reader :text, :member, :chat

  def initialize(text, member, chat)
    @text = text
    @member = member
    @chat = chat
  end
end
