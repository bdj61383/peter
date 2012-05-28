#!/usr/bin/env ruby

# This represents the "master list" that will be produced by the admin every time an elimination round is completed.  It results from the admin going through a pictorial representation of the contestant pool and checking whether or not they survived, won and immunity challenge, etc.  It will need to be pushed to the database in a hash form containing the 'e1' variable as the value and the date (or elimination round number) as the key.  The end result should be a table that has each of the elimination rounds and the results of that round, in case we ever need to go back and change something or look at something. 

module Master_round1
	class Results
		def results
			c1 = {'survive'=>true, 'immunity'=>false, 'merge'=>true}
			c2 = {'survive'=>false, 'immunity'=>false, 'merge'=>false}
			c3 = {'survive'=>true, 'immunity'=>false, 'merge'=>false}
			c4 = {'survive'=>true, 'immunity'=>true, 'merge'=>true}
			e1 = {'c1'=>c1, 'c2'=>c2, 'c3'=>c3, 'c4'=>c4}
			return e1
		end
	end
end


# test = Master_round1::Results.new
# puts test.results