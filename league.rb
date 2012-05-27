#!/usr/bin/env ruby

module League
	class League
		attr_accessor :name, :pass, :users, :sys

		def sys 
			@sys = {'survive'=>1, 'immunity'=>1, 'merge'=>1}
		end

		def initialize
			@users = Hash.new { |hash, key| hash[key] = [] }
		end

		def add_user(username)
			a = Hash.new { |hash, key| hash[key] = [] }
			a["username"] << username
			puts a.class
			puts users.class
			puts a
			@users = users.update(a)
			puts users

			# users.store(a)
			# @users << a
			# a = {}
			# (a["username"] ||= []) << username
			# puts a["username"]

			# a = Hash[]
			# a = {'username'=>username}
			# puts a
			# users << a
			# puts user
			# puts @users
			
		end
	end
end

test = League::League.new
# puts test.users
test.add_user('me')
test.add_user('another')
puts test.users