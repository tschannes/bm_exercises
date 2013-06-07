class IRCbot
	require "socket"

	def initialize
		server = "chat.freenode.net"
		port = "6667"
		nick = "LunchBot"
		channel = "#bitmakerlabs"
		msg_prefix = "PRIVMSG #{channel} :"
	end
end