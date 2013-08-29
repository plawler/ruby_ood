class Gear

  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    args = defaults.merge(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end

  def defaults
     {:chainring => 40, :cog => 18}
  end

  private :diameter, :defaults

end

#puts Gear.new(52, 11, 26, 1.5).gear_inches
#puts Gear.new(52, 11, 24, 1.25).gear_inches
