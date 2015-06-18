class CommandsController < ApplicationController
	def list
		@command = Command.all
	end
end
