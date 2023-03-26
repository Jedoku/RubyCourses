# frozen_string_literal: true

require_relative 'member'
require_relative 'message'

require_all 'lib'

members = [Member.new('Xiollx'), Member.new('$anya'), Member.new('yurec'), Member.new('Yarik Jones'), Member.new(' '),
           Member.new('Bogdanium')]

chat = Chat.new(members, {}, members[0], 'Ruby_Courses')

chat.status

private

def require_all(relative_path)
  absolute_path = File.expand_path(relative_path, __dir__)

  Dir["#{absolute_path}/**/*.rb"].sort.each do |file|
    require_relative file
  end
end