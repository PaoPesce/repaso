require_relative "animal"
class Warthog < Animal
  #attr_reader :name

  def initialize(name)
    @name = name
  end
  def sound
    "#{@name} emite grunidos"
  end
end

jabali = Warthog.new("Pumba")

puts jabali.sound
