class Api::ReportsController < ApplicationController

  before_action :set_report, only: [:show, :update, :destroy]

  def index
    render json: Report.all
  end

  def create
    report = Report.new(report_params)
    if report.save
      render json: report
    else
      render json: { message: report.errors }, status: 400
  end
end

  def show
    render json: @report
  end

  def update
    if @report.update(report_params)
      render json: @report
    else
      render json: { message: @report.errors }, status: 400
  end
end

  def destroy
    if @report.destroy
      render status: 204
    else
      render json: { message: "Unable to remove this report" }, status: 400
    end
  end


private

  def set_report
    @report = Report.find_by(id: params[:id])
  end

  def report_params
    params.require(:report).permit(:name, :doctor_id, :home_planet, :first_appearance, :latest_appearance)
  end

end
