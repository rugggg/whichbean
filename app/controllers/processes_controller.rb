class ProcessController < ApplicationController
	def index
		@processes = Process.all
	end
	def show
    	@process = Process.find(params[:id])
    end

	def new
	end

	def create
		@process = Process.new(processes_params)
 
  		@process.save
  		redirect_to @process
	end
	private
	 def processes_params
	 	params.require(:process).permit(:name, :text)
	 end
end
