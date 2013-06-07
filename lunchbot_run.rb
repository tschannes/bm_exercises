class IRCBot
	require "socket"
	require_relative "lunchbot"

	#returns user nick name from IRC msg
	def name_parse(msg)
		x = msg.index("!")
		msg[1,x-1]
	end

	def list_group(bot)
		group = bot.group
	end

	def random_restaurant(bot)
		bot.restaurants.sample
	end


	def initialize
		server = "chat.freenode.net"
		port = "6667"
		nick = "LunchBot"
		channel = "#lunchbot"
		join_command = "lunchbot join"
		list_command = "lunchbot group"
		go_command = "lunchbot go"
		intro_msg = "Welcome to the amazing Lunchbot! Not sure what to eat? Join by typing '#{join_command} and we'll decide for you!"
		msg_counter = 20
		msg_prefix = "PRIVMSG #{channel} :"

		s = TCPSocket.open(server, port)
		s.puts "USER LunchBot 0 * LunchBot"
		s.puts "NICK #{nick}"
		s.puts "JOIN #{channel}"
		lb = Lunchbot.new

		s.puts msg_prefix + intro_msg

		until s.eof? 
			msg = s.gets
			puts msg
			break if msg.include?("exit me") #to exit

			#repeats intro msg every 20 msgs to IRC
			msg_counter -= 1
			if msg_counter==0
				s.puts intro_msg
				msg_counter = 20
			end

			if msg.include?(msg_prefix)

				#joining lunchbox group
				if msg.include?(join_command)
					name = name_parse(msg)
					if lb.group_names.include?(name)
						s.puts msg_prefix + "#{name} has already joined"
					else
						lb.join(name)
						s.puts msg_prefix + "#{name} has joined Lunchbot! Type #{list_command} to list all members, or #{go_command} to decide where to go"
					end

				#listing all group members
				elsif msg.include?(list_command)
					lb.group_names.each_with_index do |mem, i|
						s.puts "#{msg_prefix} [#{i+1}] #{mem}"
					end
				elsif msg.include?(go_command)
					restaurant = random_restaurant(lb)
					output_string = lb.group_names.join(', ')
					s.puts msg_prefix + output_string + ": you guys are going to #{restaurant.name}. Bon appetit!"
					s.puts msg_prefix + "Restaurant description: " + restaurant.description
					s.puts msg_prefix + "Located at: " + restaurant.location
				end
			end

		end

		s.puts "PART" #exits channel
	end
end

IRCBot.new


