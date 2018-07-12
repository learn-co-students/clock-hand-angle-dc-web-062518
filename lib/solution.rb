require 'pry'
def clock_angle(time)
   # code your solution here
   #every minute the minute hand moves 6 degrees
   #every hour mark is 30 degrees
   #every minute the hour hand moves by half a degree
    s = time.split(':')
    hour = s[0].to_i
    minute = s[1].to_i
    m_d = minutes_to_degrees(minute)
    h_d = hours_to_degree(minute,hour)

     # degree = h_d - m_d
     degree = 0

     if h_d > m_d
       degree = h_d - m_d
     elsif m_d > h_d
       degree = m_d - h_d
     end

     if degree > 180
       degree = degree - 180
     end
     # binding.pry
     # if degree > 180
     #   degree = 360 - degree
     # end
     degree
end

def minutes_to_degrees(minute)
 # if minute > 30
 #   minute = 60 - minute
 # end
 degrees = minute * 6
end

def hours_to_degree(minute, hour)
 # if hour > 6
 #   hour = 12 - hour
 # end
 if hour == 12
   hour = 0
 end
 degree = (hour * 30) + (minute * 0.5)
end
