require_relative "animal"
class Lion < Animal
  #attr_reader :name

  #def initialize(name)
   # @name = name
  #end
  def sound
    "#{@name} emite rugidos"
  end
  def eat(food=nil)
    super(food)
  end
end
#leon = Lion.new("Lala")
#puts leon.sound
#puts lion("lala").sound
#Primero instanciar el objeto
leon = Lion.new("Simba")
#utilizamos las variables de instancia y los metodos
 #puts leon.name
 #puts leon.sound
 #puts "#{leon.name} #{leon.sound}"
p leon
puts leon.sound
puts leon.eat("carne")
