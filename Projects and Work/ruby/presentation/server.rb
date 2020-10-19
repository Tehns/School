require 'socket'

server = UDPSocket.new
server.bind("127.0.0.1", 8080)

while true
  req =  server.recvfrom(512)
  puts req[0]
end