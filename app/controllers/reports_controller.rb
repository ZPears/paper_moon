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
			render action: "index"
		else
			render action: "new"
		end
	end

private
	def report_params
		params.require(:report).permit(:url, :user_id)
	end
end
