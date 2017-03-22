ws "/bradsendpoint" do |socket|
  a, b, c, d = 1, 1, 1, 1
  10000.times do |sleepy|
    100.times do 
      sleep 1.0/15.0
      a += 1 
      b += 2 
      c += 1 
      d += 2
      arr = [a, b, c, d]
      socket.send arr.to_s
    end
    100.times do
      sleep 1.0/15.0
      a -= 1 
      b -= 2
      c -= 1 
      d -= 2
      arr = [a, b, c, d]
      socket.send arr.to_s
    end
    a, b, c, d = 100, 100, 100, 100
  end
  # socket.on_message do |mes|
  #   socket.send "Echo back from server #{mes}"
  #   puts mes
  # end
  socket.on_close do
    puts "Closing Socket"
  end
end
