require 'socket'

client = UDPSocket.new
client.send(gets.chomp, 0, "127.0.0.1", 8080)