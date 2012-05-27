class A
	attr_accessor :hash

	def initialize
		@hash = Hash.new { |hash, key| hash[key] = [] }
	end
end

a = A.new
b = {'key'=>'value'}
c = {'newkey'=>'newvalue'}
a = a.hash.merge(b)
# a = a.hash.update(c)
puts a.class