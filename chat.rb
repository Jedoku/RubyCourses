# frozen_string_literal: true

require_relative 'member'
require_relative 'message'

# Description/Explanation of Chat class
class Chat
  attr_accessor :members, :messages
  attr_reader :admins

  def initialize(members, messages, admins)
    @members = members
    @messages = messages
    @admins = admins
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

chat = Chat.new(members, {}, members[0])

chat.status
