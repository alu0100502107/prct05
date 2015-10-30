class Fraccion
   
   #Método getter num y den
   attr_reader :num, :den   

   #Constructor
   def initialize(num, den)
      raise ArgumentError, 'El numerador no es numérico' unless num.is_a? Numeric
      raise ArgumentError, 'El denominador no es numérico' unless den.is_a? Numeric
      mcd = num.gcd(den) #mcd = mínimo común divisor
      @num = num/mcd
      @den = den/mcd
   end  

  #Método para devolver un string
   def to_s
      #Numerador != 0 y denominador = 1
     if (@num != 0 && @den == 1)
        "#{@num}"
     #Numerador = -1 ó positivio y denominador = -1
     elsif ((@num > 0 || @num == -1) && @den == -1)
        "#{-@num}"
     #Numerador negativo y denominador = -1    
     elsif (@num < 0 && @den == -1)    
        "#{@num}" 
     #Numerador y denominador positivos
     elsif (@num > 0 && @den > 0)
        "#{@num}/#{@den}"
     #Numerador y denominador negativos
     elsif (@num < 0 && @den < 0)
        "#{-@num}/#{-@den}"
     #Numerador negativo y denominador positivo
     elsif (@num < 0 && @den > 0)
        "#{@num}/#{@den}"
     #Numerador positivo y denominador negativo
     elsif (@num > 0 && @den < 0)
        "#{-@num}/#{-@den}"
     #Numerador = 0 y denominador != 0
     elsif (@num == 0 && @den != 0)
        "0"
     #Numerador != 0 y denominador = 0
     else 
        "Infinito"
     end
   end
   
   #Método para sumar dos fracciones
   def +(other)
      num = other.den * @num + other.num * @den
      den =  other.den * @den
      Fraccion.new(num,den)
   end
   
   #Método para restar dos fracciones
   def -(other)       
      num = other.den * @num - other.num * @den
      den = other.den * @den
      Fraccion.new(num,den)
   end
   
   #Método para multiplicar dos fracciones
   def *(other)
      num = other.num * @num
      den = other.den * @den
      Fraccion.new(num,den)
   end
   
   #Método para dividir dos fracciones
   def /(other)
      num = other.den * @num
      den = other.num * @den
      Fraccion.new(num,den)
   end
   
end   
