require 'socket'
#require 'data_mapper'
require './toh.rb'

puts "Tale of Heads server v0.1"
puts "Copyright 2012 Son Holo son.sonholo.holo@gmail.com"
puts "All rights reserved"
puts

class TOHServer
	def initialize
	puts "Server initializing..."
		@sock = UDPSocket.new
		@sock.bind(nil, $PORT)
	end
	
	def go
		puts "Server started!"
		puts
		
		while true do
			text, sender = @sock.recvfrom(16)
			puts text
		end
	end
end

serv = TOHServer.new
serv.go
