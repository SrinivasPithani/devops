class Book1
	def initialize(title, author)
		@title = title
		@author = author
	end

	def get_title
		@title
	end

	def get_author
		@author
	end
end

class Book2
	attr_accessor :title, :author
	
	def initialize(title, author)
		@title = title
		@author = author
	end
end

bo1 = Book1.new("Godfather", "Mario Puzo")
puts bo1.get_title
puts bo1.get_author

bo2 = Book2.new("War & Peace", "Leo Tolstoy")
bo2.title = "War & My Peace"
puts bo2.title

