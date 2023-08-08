class JuiceMaker
  def self.debug_light_on? ; true end
  def initialize(@fluid : Int32, @running = false) end
  def start ; @running = true end
  def running? ; @running end
  def add_fluid(q : Int32) @fluid += q end
  def stop(time : Int32)
    @fluid -= (time * 5) if @fluid > 4
    @running = false
  end
end