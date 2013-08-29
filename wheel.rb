require_relative 'gear'

class Wheel

  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(:chainring => 52, :cog => 11, :wheel => @wheel).gear_inches
puts Gear.new(:chainring => 52, :cog => 11, :wheel => @wheel).ratio
