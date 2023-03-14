# frozen_string_literal: true

require_relative 'member'
require_relative 'message'

# Description/Explanation of Chat class
class Chat
  attr_accessor :members, :messages, :chat_name
  attr_reader :admins

  def initialize(members, messages, admins, chat_name)
    @members = members
    @messages = messages
    @admins = admins
    @chat_name = chat_name
  end

  def status
    @members.each do |member|
      status_change(member)
      puts "#{member.name}:#{member.status}"
    end
  end

  private

  def status_change(member)
    member.status = if member.messages.empty?
                      'passive'
                    else
                      'active'
                    end
  end
end

members = [Member.new('Xiollx'), Member.new('$anya'), Member.new('yurec'), Member.new('Yarik Jones'), Member.new(' '),
           Member.new('Bogdanium')]

chat = Chat.new(members, {}, members[0], "Ruby_Courses")

chat.status
