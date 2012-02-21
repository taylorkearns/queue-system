class Queue_
	def initialize(name, capacity)
		@name = name.to_s
		@capacity = capacity.to_i
		@head_of_queue = 0
	end
	
	def enqueue()
		if @head_of_queue == @capacity
			puts "#{ @name } is currently full."
		else
			@head_of_queue += 1
			id = @head_of_queue
			new_member = Member.new(id, @name)
			puts "Member #{ new_member.id } has been added to '#{ @name }'."
		end
	end
	
	def dequeue()
		if @head_of_queue == 0
			puts "#{ @name } is empty."	
		else
			puts "Member #{ @head_of_queue } has been dequeued from '#{ @name }'."
			@head_of_queue -= 1
		end
	end
end

class Member
	attr_reader :id, :queue_name
	
	def initialize(id, queue_name)
		@id = id
		@queue_name = queue_name
	end
end

# Test data
q = Queue_.new('waiting list', 5)
q.enqueue()
q.enqueue()
q.enqueue()
q.enqueue()
q.enqueue()
q.enqueue()
q.enqueue()

q.dequeue()
q.dequeue()

q.enqueue()
q.enqueue()
q.enqueue()