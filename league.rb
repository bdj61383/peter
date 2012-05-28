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

	end
end


