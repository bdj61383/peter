#!/usr/bin/env ruby
require '~/Documents/peter/master_round1.rb' #This will eventually require the "master_list" or something, that will contain the results of every elimination round thus far.  That will allow the 'score' method to be passed an elimination round and return the user's score for that round.
require '~/Documents/peter/league.rb'


if __FILE__ == $0
	# puts "this is working"
	# if __FILE__ == $0
	test = League::League.new
	# puts test.users
	test.add_user('Brian', 'Johnson', 'bdog', 'mypass', 'brain@google.com', 'Balls deep everyday', 'Michael Robert Tony')
	test.add_user('Samwise', 'Gamje', 'hobbit', 'password', 'samthebrave@yahoo.com', 'I love Frodo', 'Sally Robert Davis')
	test.add_user('Peter', 'Holter', 'peter', 'peterpass', 'peter@gmail.com', 'Business school!', 'Michael Jimmy Sam')
	test.add_user('James', 'Vanderbeek', 'dawson', 'creek', 'lame@hotmail.com', "I don't want to wait", 'Sally Robert Tim')
	
	puts test.score('dawson')

	# puts test.users
	#  test.add_user('you', 'password')

	# puts test.users['bdog']['team']



end