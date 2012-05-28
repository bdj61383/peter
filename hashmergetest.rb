class A
	attr_accessor :hash

	def initialize
		@hash = Hash.new { |hash, key| hash[key] = [] }
	end
end

if __FILE__ == $0 

a = A.new
b = {'key'=>'value'}
c = {'newkey'=>'newvalue'}

puts a.class
puts a.hash
puts a.hash.class
puts b
a.hash = a.hash.merge(b)
puts a.hash
puts c
a.hash = a.hash.merge(c)
puts a.hash


end