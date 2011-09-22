class PlaceDTO
	attr_accessor :id
	attr_accessor :name
	attr_accessor :description
	attr_accessor :visible_properties
	attr_accessor :enabled_properties
	attr_accessor :rating
	attr_accessor :x
	attr_accessor :y

	@id, @name, @description, @visible_properties, @enabled_properties, @rating, @x, @y = nil

	def initialize(place, char)
		@id = place.id
		@name = place.name
		@description = place.description
		@visible_properties = []
		@enabled_properties = []
		place.enter_action.conditions.each {|c|
			if c.name == 'visible_condition'
				@visible_properties << c.dto
			else
				@enabled_properties << c.dto
			end
		}
		@rating = char.actions.by_place(place.id).sum(:delta_glory) unless char.nil?
		@x = place.map_x
		@y = place.map_y
	end
end

class Place::PlaceDTO < PlaceDTO
end
