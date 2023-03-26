# frozen_string_literal: true

# Description/Explanation of Chat class
class Message
  attr_reader :text, :member, :chat, :attachment

  def initialize(text, member, chat, attachment)
    @text = text
    @member = member
    @chat = chat
    @attachment = attachment
  end

  def sticker; end

  def animation; end

  def emoji; end

  def audio; end

  def video; end

  def file; end

  def time; end

  def delete; end
end