class VisitorsController < ApplicationController
	def new
		Rails.logger.debug 'DEBUG: entering new method'
		@owner = Owner.new
	end
end