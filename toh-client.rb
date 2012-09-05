require 'socket'
require './toh.rb'
require './game/hero.rb'

class TOHClient
	def initialize
		@sock = UDPSocket.new
	end
	
	def connect(ip, port)
		@ip = ip
		@port = port
	end
	
	def go
		@sock.send("hello", 0, @ip.to_s, @port)
	end
end

cli = TOHClient.new
cli.connect($IP, $PORT)
cli.go

=begin

puts "Welcome to Tale of Heads, Hero!"

# hero name
puts "What is thy name?"
name = gets.chomp

# hero gender
gends = ''
until (['M','F'].include? gends) do
	puts "What is thy gender? (M/F)"
	gends = gets[0].upcase
end
gender = gends == 'M' ? :male : :female

# hero class
clas = ''
until ($CLASSES.include? clas) do
	puts "What is thy class?"
	clas = gets.chomp.downcase.to_sym
end

hero = Hero.new(name, gender, gen_clas(clas))

puts "So it shall be. You are the #{hero.gender.to_s} #{hero.clas.to_s.capitalize} known as #{hero.name}."

#puts hero

=end

#
