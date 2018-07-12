def clock_angle(time)
    s = time.split(":")
    hour = s[0].to_i
    minute = s[1].to_i

    if hour == 12
      hour = 0
    end

    hour_angle = hour * 30 + minute * 0.5
    minute_angle = minute * 6

    if hour_angle >= minute_angle
      degree = hour_angle - minute_angle
    else
      degree = minute_angle - hour_angle
    end

    if degree > 180
      degree = degree - 180
    end
    degree
end
