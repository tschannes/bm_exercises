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