class Lunchbot
	attr_accessor :group, :restaurants

	Member = Struct.new(:name)
	Restaurant = Struct.new(:name, :description, :location)

	def initialize
		mcDonalds = Restaurant.new("McDonalds", "Cheap burgers", "200 Front St. West")
		subway = Restaurant.new("Subway", "Good subs!", "2 287 King W")
		burritoBoys = Restaurant.new("Burrito Boys", "Awesome burritos", "218 Adelaide St West")
		@restaurants = [] << mcDonalds << subway << burritoBoys
		@group = []
	end

	def join(name)
		mem = Member.new(name)
		group << mem
	end

	#returns list of group names
	def group_names
		names = []
		group.each do |mem|
			names << mem.name
		end
		names
	end
end