class Api::ReportsController < ApplicationController

  def index
    @reports = Report.all
    render json: @reports
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      render json: @report
    else
      render json: { errors: { message: "FAILED TO POST REPORT"}}
    end
  end

  def update
    @report = Report.find_by(id: params[:id])
    if @report.update(report_params)
      render json: @report
    else
      render json: { errors: { message: "FAILED TO POST REPORT"}}
    end
  end

private

  def report_params
    params.require(:report).permit(:name, :doctor_id, :home_planet, :first_appearance
laterst_appearance)
  end

end
