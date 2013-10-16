require "gcd.rb"

class Racional
	attr_reader :valor 
	attr_writer :valor
	def initialize(x,y)
	    i=gcd(x,y) 
	    x=x/i
	    y=y/i
	    puts x,y
	    puts x/y
	    @valor=x/y
 	    puts "valor:#{@valor}"
puts
	end

	def to_s
	    valor.to_s
	end

	def + other
	    @valor= @valor + other.valor
	end

	def * other
	    @valor=@valor * other.valor
	end

	def / other
	    @valor=@valor / other.valor
	end

	def - other
	    @valor=@valor - other.valor
	end
end 				
		
