@input_text = gets

def capitalise_string(input_text)
  input_text.split('').each { |i| i.capitalize! }
end 

def complete_string
  str = ''
  capitalise_string(@input_text).each { |lit| str += lit}
  
  str
end

print complete_string