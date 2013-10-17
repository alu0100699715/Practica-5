require 'NumeroRacional.rb'
require 'test/unit'

class Testeo < Test::Unit::TestCase
	def test_suma
		assert_equal "1/1", Racional.new(1,2)+Racional.new(1,2)
		assert_equal "1/1", Racional.new(10,20)+Racional.new(10,20)
		assert_equal "1/4", Racional.new(10,20)*Racional.new(10,20)
		assert_equal "63/40", Racional.new(7,8)*Racional.new(9,5)
		assert_equal "7/72", Racional.new(70,80)-Racional.new(70,90)
	end
end
