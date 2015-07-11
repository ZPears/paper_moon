class ReportsController < ApplicationController

	require 'open-uri'

	def index
		@reports = Report.where(user_id: current_user.id)
	end

	def show
		@reports = Report.where(user_id: current_user.id)
	end

	def new
		@reports = Report.where(user_id: current_user.id)
	end

	def create
		@report = Report.new(report_params)
		@report.user_id = current_user.id

		if @report.save
			flash[:notice] = "Successfully Added!"
			render action: "new"
		else
			flash[:alert] = "An Error Occured."
			render action: "new"
		end
	end

	def destroy
		@report = Report.find(params[:id])
		@report.destroy

		redirect_to reports_path
	end

private
	def report_params
		params.require(:report).permit(:url, :user_id)
	end
end
