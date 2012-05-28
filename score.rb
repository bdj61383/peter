#!/usr/bin/env ruby
require '~/Documents/peter/master_round1.rb' #This will eventually require the "master_list" or something, that will contain the results of every elimination round thus far.  That will allow the 'score' method to be passed an elimination round and return the user's score for that round.
require '~/Documents/peter/league.rb'
require '~/Documents/peter/contestant_pool.rb'

module Score
	class Score
		def score(league, user)
			@league = league
			@sys = @league.sys
			
			# Loads the 'team' array of the user you've passed as an argument.
			@team = @league.users[user]['team']
			# Converts the full-name values of 'team' (i.e. 'Michael') into abbreviated form (i.e. 'c1' for contestant 1).
			@contestants = Contestants::Contestants.new
			@contestants = @contestants.contestants
			

			

			@conversion = Array.new
			i = @team.length
			for n in 0...i
				if @contestants.include? @team[n]
					@conversion << @contestants[@team[n]]
				end
			end
			
			# puts team
			# Loads the results of the round.  This will need to be rewritten once there are multiple rounds. 
			results = Master_round1::Results.new.results
			# puts results

			# Here is the method by which we'll convert the contestant hash-tables into an array with values. 
			# There's definitely a quicker way to code this...
			c1_local = []
			if results['c1']['survive']
				c1_local << @sys['survive']
				else c1_local << 0
			end
			if results['c1']['immunity']
				c1_local << @sys['immunity']
				else c1_local << 0
			end
			if results['c1']['merge']
				c1_local << @sys['merge']
				else c1_local << 0
			end

			c2_local = []
			if results['c2']['survive']
				c2_local << @sys['survive']
				else c2_local << 0
			end
			if results['c2']['immunity']
				c2_local << @sys['immunity']
				else c2_local << 0
			end
			if results['c2']['merge']
				c2_local << @sys['merge']
				else c2_local << 0
			end

			c3_local = []
			if results['c3']['survive']
				c3_local << @sys['survive']
				else c3_local << 0
			end
			if results['c3']['immunity']
				c3_local << @sys['immunity']
				else c3_local << 0
			end
			if results['c3']['merge']
				c3_local << @sys['merge']
				else c3_local << 0
			end

			c4_local = []
			if results['c4']['survive']
				c4_local << @sys['survive']
				else c4_local << 0
			end
			if results['c4']['immunity']
				c4_local << @sys['immunity']
				else c4_local << 0
			end
			if results['c4']['merge']
				c4_local << @sys['merge']
				else c4_local << 0
			end

			# Here is how we'll sum all of the values in the c1_local array
			a = c1_local.inject(0) {|result, element| result + element}
			b = c2_local.inject(0) {|result, element| result + element}
			c = c3_local.inject(0) {|result, element| result + element}
			d = c4_local.inject(0) {|result, element| result + element}

			# Building the 'key table' that the .score method will use on instances of 'User'.  Need to come up with good naming convention.
			rubric = {'c1'=>a, 'c2'=>b, 'c3'=>c, 'c4'=>d}
			# return rubric

			# Here is what actual computes a numeric score for the user you specified as an argument
			local = Array[]
			i = @conversion.length
			for n in 0...i
				if rubric.include? @conversion[n]
					local << rubric[@conversion[n]]
				end
			end
			@total = local.inject(0) {|result, element| result + element}
			return @total
			# puts @total
			

		end
	end
end

test = League::League.new

test.add_user('Brian', 'Johnson', 'bdog', 'mypass', 'brain@google.com', 'Balls deep everyday', 'Michael Robert Tony')
test.add_user('Samwise', 'Gamje', 'hobbit', 'password', 'samthebrave@yahoo.com', 'I love Frodo', 'Sally Robert Davis')
test.add_user('Peter', 'Holter', 'peter', 'peterpass', 'peter@gmail.com', 'Business school!', 'Michael Jimmy Sam')
test.add_user('James', 'Vanderbeek', 'dawson', 'creek', 'lame@hotmail.com', "I don't want to wait", 'Sally Robert Tim')

score = Score::Score.new
if score.score(test, 'bdog') === 3
	puts 'true'
else puts 'false'
end
if score.score(test, 'hobbit') === 4
	puts 'true'
else puts 'false'
end
if score.score(test, 'peter') === 0
	puts 'true'
else puts 'false'
end
if score.score(test, 'dawson') === 4
puts 'true'
else puts 'false'
end

