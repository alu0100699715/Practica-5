require "gcd.rb"

class Racional
	attr_reader :numerador
	attr_reader :denominador
	attr_writer :numerador
	attr_writer :denominador
	def initialize(x,y)
	    i=gcd(x,y) 
	    x=x/i
	    y=y/i
	    @numerador=x
	    @denominador=y
 	    puts "Numerador:#{@numerador}"
	    puts "Denominador:#{@denominador}"
puts
	end

	def to_s
	    "#{@numerador}/#{@denominador}".to_s
	end

	def + other
	    @numerador= @numerador*other.denominador + other.numerador*@denominador
	    @denominador= @denominador*other.denominador
	    i=gcd(@numerador,@denominador)
	    @numerador=@numerador/i 
	    @denominador=@denominador/i
	    self.to_s
	end

	def * other
	    @numerador=@numerador * other.numerador
	    @denominador=@denominador * other.denominador
	    i=gcd(@numerador,@denominador)
	    puts "i=#{i}"
	    @numerador=@numerador/i
	    @denominador=@denominador/i
	    self.to_s
	    
	end

	def div(other)
	   @numerador=@numerador * other.denominador
	   @denominador=@denominador * other.numerador
	   i=gcd(@numerador,@denominador)
	   @numerador=@numerador/i
	   @denominador=@denominador/i
	   self.to_s
	end

	def - other
	   @numerador= @numerador*other.denominador - other.numerador*@denominador
	   @denominador= @denominador*other.denominador
	   i=gcd(@numerador,@denominador)
	   @numerador=@numerador/i 
	   @denominador=@denominador/i
	   self.to_s
	end
end 				
		
