require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
   
   #Método para inicializar los objetos 
   def setup
    @f1 = Fraccion.new(3,5)
    @f2 = Fraccion.new(4,3)
    @f3 = Fraccion.new(-3,5)
    @f4 = Fraccion.new(4,-3)
    @f5 = Fraccion.new(-3,-5)
    @f6 = Fraccion.new(0,3)
    @f7 = Fraccion.new(4,1)
   end
   
   #Método para mostrar los objetos
   def test_inicio
       assert_equal("3/5",@f1.to_s)
       assert_equal("4/3",@f2.to_s)
       assert_equal("-3/5",@f3.to_s)
       assert_equal("-4/3",@f4.to_s)
       assert_equal("3/5",@f5.to_s)
       assert_equal("0",@f6.to_s)
       assert_equal("4",@f7.to_s)
   end
   
   #Método para controlar los formatos
   def test_formato
      #Sólo admite números
      assert_raise(ArgumentError) {Fraccion.new('a',5)}
      assert_raise(ArgumentError) {Fraccion.new(3,'b')}
   end  
   
end   