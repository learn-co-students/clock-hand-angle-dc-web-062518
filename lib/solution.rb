def clock_angle(time)
    # code your solution here
    s = time.split(":")
    hour = s[0].to_i
    minute = s[1].to_i
    m_d = minutes_to_degrees(minute)
    h_d = hours_to_degrees(hour, minute)
    # binding.pry
    # puts "hi"
    if hour == 12 && minute == 00
      return 0
    elsif h_d > m_d
      angle = h_d - m_d
      if angle > 180
        return angle -= 180
      else
        return angle
      end
    else
      angle = m_d - h_d
      if angle > 180
        return angle -= 180
      else
        return angle
      end
    end
end

def minutes_to_degrees(minute)
  min_degrees = minute*6
end

def hours_to_degrees(hour, minute)
  hour_degrees = (hour*30) + (minute*0.5)
end
