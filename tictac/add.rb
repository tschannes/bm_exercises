class Add
	#how to include module and access the methods
	#of that
	attr_accessor :five
	
	def add(a, b)
	 d = Def.new.six(4)
	 c = Def.new.five
	 puts a + b + c + d

	end

end

class Def
	attr_accessor :five

	def initialize
		@five = five
	end

	def five
		5
	end

	def six(param)
		param * 5
	end

end



Add.new.add(1, 2)

