#!/usr/bin/env ruby
require '~/Documents/peter/master_round1.rb'

module League
	class League
		attr_accessor :name, :pass, :users, :sys

		def sys 
			@sys = {'survive'=>1, 'immunity'=>1, 'merge'=>1}
		end

		def initialize
			@users = Hash.new { |hash, key| hash[key] = [] }
		end

		def add_user(first_name, last_name, username, password, email, tagline=[], team=[])
			team = team.split(/ /)
			a = {'first_name'=>first_name, 'last_name'=>last_name, 'username'=>username, 'password'=>password, 'email'=>email, 'tagline'=>tagline, 'team'=>team}

			b = {username=>a}

			@users = @users.merge(b)
			
		end

		def score(username)
			# Loads the 'team' array of the user you've passed as an argument.
			@team = self.users[username]['team']
			# puts team
			# Loads the results of the round.  This will need to be rewritten once there are multiple rounds. 
			results = Master_round1::Results.new.results
			# puts results

			# Here is the method by which we'll convert the contestant hash-tables into an array with values. 
			# There's definitely a quicker way to code this...
			c1_local = []
			if results['Tony']['survive']
				c1_local << sys['survive']
				else c1_local << 0
			end
			if results['Tony']['immunity']
				c1_local << sys['immunity']
				else c1_local << 0
			end
			if results['Tony']['merge']
				c1_local << sys['merge']
				else c1_local << 0
			end

			c2_local = []
			if results['Michael']['survive']
				c2_local << sys['survive']
				else c2_local << 0
			end
			if results['Michael']['immunity']
				c2_local << sys['immunity']
				else c2_local << 0
			end
			if results['Michael']['merge']
				c2_local << sys['merge']
				else c2_local << 0
			end

			c3_local = []
			if results['Robert']['survive']
				c3_local << sys['survive']
				else c3_local << 0
			end
			if results['Robert']['immunity']
				c3_local << sys['immunity']
				else c3_local << 0
			end
			if results['Robert']['merge']
				c3_local << sys['merge']
				else c3_local << 0
			end

			c4_local = []
			if results['Sally']['survive']
				c4_local << sys['survive']
				else c4_local << 0
			end
			if results['Sally']['immunity']
				c4_local << sys['immunity']
				else c4_local << 0
			end
			if results['Sally']['merge']
				c4_local << sys['merge']
				else c4_local << 0
			end

			# Here is how we'll sum all of the values in the c1_local array
			a = c1_local.inject(0) {|result, element| result + element}
			b = c2_local.inject(0) {|result, element| result + element}
			c = c3_local.inject(0) {|result, element| result + element}
			d = c4_local.inject(0) {|result, element| result + element}

			# Building the 'key table' that the .score method will use on instances of 'User'.  Need to come up with good naming convention.
			rubric = {'Tony'=>a, 'Michael'=>b, 'Robert'=>c, 'Sally'=>d}
			# return rubric

			# Here is what actual computes a numeric score for the user you specified as an argument
			local = Array[]
			i = @team.length
			for n in 0...i
				if rubric.include? @team[n]
					local << rubric[@team[n]]
				end
			end
			@total = local.inject(0) {|result, element| result + element}
			puts @total.class


		end
	end
end


