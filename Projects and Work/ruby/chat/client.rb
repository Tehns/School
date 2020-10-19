
require 'socket'

input = gets.chomp

connections = []
socket = UDPSocket.new(Socket::AF_INET)

socket.bind("127.0.0.1", 8989)

Thread.new {
  while true
    begin
      socket.recvfrom(1024)
    end
  end
}

socket.send(input, 0, "127.0.0.1", 7878)
socket.recvfrom(1024)
