class Ship
	attr_accessor :ships


	def initialize
		@coordinates = []
		@fleet
	end
	

	def set_ship_coordinate
		puts "Set your ships by entering coordinates:"
		2.upto(5) do |i|
			@coordinates = []
			puts "Set your ship with length #{i}!"
			i.times do 
				print "X:"
				x = gets.chomp.to_i
				print "Y:"
				y = gets.chomp.to_i
				coordinate = [x,y]
				@coordinates << coordinate
				puts @coordinates.inspect
			end
			ship_maker
		end
	end

	def ship_maker
		length = @coordinates.size

		er = Array.new(i){Array.new(1, "default")}

		case length
		when 2
			speedboat = []
			speedboat << @coordinates
		when 3
			cruiser = []
			cruiser << @coordinates
		when 4
			tanker = [] 
			tanker = @coordinates
		when 5
			flagship = []
			flagship << @coordinates
		end
		@fleet = []
		@fleet << speedboat << cruiser << tanker << flagship
		@fleet[

	end

	def show
		puts @fleet.inspect
		
	end

end