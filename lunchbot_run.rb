require "socket"
require_relative "lunchbot"

server = "chat.freenode.net"
port = "6667"
nick = "LunchBot"
channel = "#lunchbot"
greeting_prefix = "PRIVMSG #bitmakerlabs"

s = TCPSocket.open(server, port)

s.puts "USER LunchBot 0 * LunchBot"
s.puts "NICK #{nick}"
s.puts "JOIN #{channel}"
s.puts "PRIVMSG #{channel} : Hello from Lunch Bot"

until s.eof? do 
	msg = s.gets
	puts msg

	wasGreeted = false
	greetings.each do |greeting|
		if msg.include? greeting
			wasGreeted = true
			puts "The greeting was recognized."
		end
	end

	if msg.include? greeting_prefix and wasGreeted
	end
	
end