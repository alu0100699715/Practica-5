require 'NumeroRacional.rb'
require 'test/unit'

class Testeo < Test::Unit::TestCase
	def setup #Crea un obejeto Racional como atributo de la clase Testeo.
		@nr = Racional.new(1,2)
	end
	
	def test_objeto #Determina si los tipos son correctos y si la función to_s funciona.
		assert_instance_of(String,@nr.to_s,"No es una string")
		assert_not_nil(@nr.denominador, "denominador no ha sido inicializado")
		assert_not_nil(@nr.numerador, "numerador no ha sido inicializado")
		assert_kind_of(Fixnum, @nr.denominador, "No es correcto")
		assert_kind_of(Fixnum, @nr.numerador, "No es correcto")
		assert_kind_of( String, @nr.numerador, "Es correcto") #Este método dará un error a propósito.
	end
	
	def test_suma #Determina que la suma funciona correctamente
		assert_equal "1/1", @nr+@nr
		assert_equal "1/1", Racional.new(10,20)+Racional.new(10,20)
	end
	
	def test_multiplicar #Determina que la multiplicación funciona correctamente
		assert_equal "1/4", Racional.new(10,20)*Racional.new(10,20)
		assert_equal "63/40", Racional.new(7,8)*Racional.new(9,5)
	end
	
	def test_resta #Determina que la resta funciona correctamente
		assert_equal "7/72", Racional.new(70,80)-Racional.new(70,90)
		assert_equal "0/1", @nr-@nr
		assert_equal "1/6", Racional.new(7,6)-Racional.new(6,6)
	end
	
	def test_division #Determina que la división funciona correctamente
		assert_equal "2/1", Racional.new(1,2).div(Racional.new(2,8))
		assert_equal "15/16", Racional.new(9,8).div(Racional.new(6,5))
	end
end

