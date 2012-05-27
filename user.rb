#!/usr/bin/env ruby
require '~/Documents/peter/5-25-12/master_round1.rb' #This will eventually require the "master_list" or something, that will contain the results of every elimination round thus far.  That will allow the 'score' method to be passed an elimination round and return the user's score for that round.
require '~/Documents/peter/5-25-12/league.rb'

module User
	class User

		attr_accessor :first_name, :last_name, :username, :password, :email, :tagline, :team

		def score
			sys = League::League.sys

			# rubric = Round1::Rubric.new
			# rubric = rubric.rubric
			# puts rubric
			# local = Array[]
			# i = @team.length
			# for n in 0...i
			# 	if rubric.include? @team[n]
			# 		local << rubric[@team[n]]
			# 	end
			# end
			# puts local.inject(0) {|result, element| result + element}
			
		end
	end
end

# test = User::User.new
# puts test.score