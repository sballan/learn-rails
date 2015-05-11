class Example < Object

	attr_accessor :honorific
	attr_accessor :name
	attr_accessor :date

	def initialize(name,date)
		@name = name
		@date = date.nil? ? Date.today : date
	end

	def backwards_name
		@name.reverse
	end

	def to_s
		@name
	end

	def titled_name
		# ||= means assign to this variable if it is currently unassigned
		@honorific ||= 'Esteemed'
		titled_name = "#{@honorific} #{@name}"
	end

	def december_birthdays
		born_in_december = [ ]
		# .each iterates over a Hash map, using the | __, __| variables
		# key-value pairs.
		famous_birthdays.each do |name,date|
			if date.month == 12
				# << adds the following item to an array
				born_in_december << name
			end
		end
		born_in_december
	end

	private

	def famous_birthdays
		birthdays = {
			'Ludwig van Beethoven' => Date.new(1770,12,16),
			'Dave Brubeck' => Date.new(1920,12,6),
			'Buddy Holly' => Date.new(1936,9,7),
			'Keith Richards' => Date.new(1943,12,18)
		}
	end

end
