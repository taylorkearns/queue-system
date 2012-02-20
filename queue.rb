class Queue_
	def initialize(name, capacity)
		@name = name.to_s
		@capacity = capacity.to_i
		@members = []
		@head_of_queue = 0
	end
	
	def enqueue(count=1, name)
		if @members.count == @capacity
			puts "Sorry, #{ @name } is currently full."
		else
			id = @members.count
			new_member = Member.new(id, name, @name)
			@members[@members.count] = name
			puts "#{ name } has been added to #{ @name }."
		end
		print_queue
	end
	
	def dequeue(count=1)
		if @members.empty?
			puts "#{ @name } is empty."	
		else
			puts "#{ @members[@head_of_queue] } has been removed from #{ @name }."
			@members.delete(@members[@head_of_queue])
		end
		print_queue
	end
	
	def print_queue
		puts "#{ @name }: #{ @members }"
		puts "-" * 10
	end
end

class Member
	attr_reader :id, :name, :queue_name
	
	def initialize(id, name, queue_name)
		@id = id
		@name = name
		@queue_name = queue_name
	end
end

# Test data
q = Queue_.new('waiting list', 5)
q.enqueue('sam')
q.enqueue('chris')
q.enqueue('bill')
q.enqueue('nancy')
q.enqueue('tracy')
q.enqueue('kathleen')
q.dequeue()
q.dequeue()
q.dequeue()
q.enqueue('kevin')
q.enqueue('jeff')
q.enqueue('jill')