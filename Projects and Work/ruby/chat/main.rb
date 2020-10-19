require 'socket'

connections = []
socket = UDPSocket.new(Socket::AF_INET)
socket.bind("127.0.0.1", 7878)

i = 0
running = true

Thread.new {
  while true
    begin
      rec = socket.recvfrom(1024)
      
      if !connections.include? "rec[2]"
      end

      connections << rec[2]

      connections.each do
      socket.send(rec[0], 0, rec[2], rec[3].to_i-1)
      end

    rescue
      puts "Server::> Error"
      retry
    end
  end
}

while(running)
end
