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
   
   def test_operaciones_aritmeticas
       #Suma
       assert_equal("29/15",(@f1+@f2).to_s)
       assert_equal("0",(@f1+@f3).to_s)
       assert_equal("-11/15",(@f1+@f4).to_s)
       assert_equal("23/5",(@f1+@f7).to_s)
       assert_equal("29/15",(@f2+@f5).to_s)
       assert_equal("4/3",(@f2+@f6).to_s)
        #Resta
       assert_equal("-11/15",(@f1-@f2).to_s)
       assert_equal("6/5",(@f1-@f3).to_s)
       assert_equal("29/15",(@f1-@f4).to_s)
       assert_equal("-17/5",(@f1-@f7).to_s)
       assert_equal("11/15",(@f2-@f5).to_s)
       assert_equal("4/3",(@f2-@f6).to_s)
       #Multiplicar
       assert_equal("4/5",(@f1*@f2).to_s)
       assert_equal("-9/25",(@f1*@f3).to_s)
       assert_equal("-4/5",(@f1*@f4).to_s)
       assert_equal("12/5",(@f1*@f7).to_s)
       assert_equal("4/5",(@f2*@f5).to_s)
       assert_equal("0",(@f2*@f6).to_s)
       #Dividir
       assert_equal("9/20",(@f1/@f2).to_s)
       assert_equal("-1",(@f1/@f3).to_s)
       assert_equal("-9/20",(@f1/@f4).to_s)
       assert_equal("3/20",(@f1/@f7).to_s)
       assert_equal("20/9",(@f2/@f5).to_s)
       assert_equal("Infinito",(@f2/@f6).to_s)
   end
    
end   