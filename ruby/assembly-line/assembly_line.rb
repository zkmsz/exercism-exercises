class AssemblyLine
  def initialize(speed)
    @speed = speed
    @cars_per_hour = 221
  end

  def production_rate_per_hour
    cars = @speed * @cars_per_hour
    case @speed
      when 10 then cars *= 0.77
      when 9 then cars *= 0.8
      when 5..8 then cars *= 0.9
      else
        cars
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
