#!/usr/bin/ruby

alpha = { 1 => 1,
		  2 => 2,
}

alpha.update(alpha) { |k, v| v**2 }

puts alpha 

