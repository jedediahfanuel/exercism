class Reactor
  def self.is_criticality_balanced?(temprature, neutrons_emitted)
    case {temprature, neutrons_emitted, temprature * neutrons_emitted}
    when {.<(800), .>(500), .<(500_000)} then true
    else false end
  end

  def self.reactor_efficiency(voltage, current, theoretical_max_power)
    case (voltage * current) / theoretical_max_power * 100
    when .>= 80 then "green"
    when .>= 60 then "orange"
    when .>= 30 then "red"
    else             "black" end
  end

  def self.fail_safe(temperature, neutrons_produced_per_second, threshold)
    case temperature * neutrons_produced_per_second
    when .< threshold * 0.9 then "LOW"
    when .< threshold * 1.1 then "NORMAL"
    else                         "DANGER" end
  end
end
