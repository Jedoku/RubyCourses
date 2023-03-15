# frozen_string_literal: true

require_relative 'member'
require_relative 'message'

members = [Member.new('Xiollx'), Member.new('$anya'), Member.new('yurec'), Member.new('Yarik Jones'), Member.new(' '),
           Member.new('Bogdanium')]

chat = Chat.new(members, {}, members[0], 'Ruby_Courses')

chat.status
