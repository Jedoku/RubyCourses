require 'pry'
@months = 31, 28, 31, 30, 31, 30,
         31, 31, 30, 31, 30, 31
@time_now = Time.now       
puts 'text your birthday by pattern: day.month'
birth_date = gets.split('.').each { |element| element.to_i}
@birth_month = birth_date[1].to_i
@birth_day = birth_date[0].to_i

def count_of_days
  count = 0
  @months.each_with_index do |element, index|
    is_it_this_month = @time_now.month == @birth_month
    is_it_this_year = 
      if is_it_this_month 
        @time_now.day < @birth_day
      else
        @time_now.month < @birth_month
      end

    if is_it_this_month
      return @birth_day - @time_now.day
    elsif is_it_this_year
      (count += element) if index != @birth_month-1 && index > @time_now.month-1

      count += (@months[@time_now.month-1] - @time_now.day ) if index == @time_now.month-1
      count += (@months[@birth_month-1]-(@months[@birth_month-1] - @birth_day )) if index == @time_now.month-1

      return count if index == 11
    else
      (count += element) if index > @time_now.month-1 
      (count += element) if index < @birth_month-1 && index != @time_now.month-1
      count += (@months[@time_now.month-1] - @time_now.day ) if index == @time_now.month-1
      count += (@months[@birth_month-1]-(@months[@birth_month-1] - @birth_day )) if index == @time_now.month-1
    end
  end
  
  count
end

puts count_of_days.to_s + 'днів до днюхи'