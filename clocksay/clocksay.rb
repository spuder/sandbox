# https://www.reddit.com/r/dailyprogrammer/comments/6jr76h/20170627_challenge_321_easy_talking_clock/

#TODO: replace with variable
time = '23:05'

@string = []

@times = {
  0 => "o clock",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eightteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "fourty",
  50 => "fifty"
}

# Say Hour
def say_hour(time)
  hour = time.split(':')[0].to_i
  if hour > 12
    hour = hour - 12
  end
  if @times[hour]
    @string << @times[hour]
  else 
    raise "Hour must be between 0 and 12, found #{hour}"
  end
  
end

# Say Minute
def say_minute(time)
  minute = time.split(':')[1].to_i
  if @times[minute]
    if minute < 10
      @string << "oh #{@times[minute]}"
    else 
      @string << @times[minute]
    end
  else 
    # TODO: make this code more DRY
    if minute > 50
      min = @times[50]
      minute = minute - 50
      @string << "#{min}#{@times[minute]}"
    elsif minute > 40
      min = @times[40]
      minute = minute - 40
      @string << "#{min}#{@times[minute]}"
    elsif minute > 30
      min = @times[30]
      minute = minute - 30
      @string << "#{min}#{@times[minute]}"
    elsif minute > 20
      min = @times[20]
      minute = minute - 20
      @string << "#{min}#{@times[minute]}"
    end
  end
end

def say_meridiem(time)
  meridiem = get_meridiem(time)
  @string << meridiem
end



def get_meridiem(time)
  if time.split(':')[0].to_i < 0 || time.split(':')[0].to_i > 23
    raise 'Time must be between 00 and 23 hours'
  elsif time.split(':')[0].to_i < 12
    return 'AM'
  elsif time.split(':')[0].to_i >= 12
    return 'PM'
  else
    raise "invalid input #{time}"
  end
end

say_hour(time)
say_minute(time)
say_meridiem(time)

print "It's "
@string.each do |s|
  print "#{s} "
end
