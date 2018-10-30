#!/usr/bin/env ruby

#blocks_galore1.rb

def try
	if block_given?
		index = [1,2,3]
		index.each do |i|
		yield i
		puts
		end
	else
		puts "no block"
	end
end

try {|i| print "#{i} is #{i}\n"}#simplest block utilization

x=0
try do |i| 
#reiterates over i, incrementing x
#x declared indpendently and outside of method AND block call
	puts "#{i} is now #{i-x}\nb/c x = #{x}" 
	x +=1
	end


try do |i|
=begin
this reiterates over i in index, resetting y each time
=end
	y = 0
	puts "#{i} is finally #{i-y}\nb/c y = #{y}" 
	y +=1
	end

try#ehdn there is nothing passed to block 

__END__
a simple, elementary tutorial on blocks...
