class FileReportsController < ApplicationController
  def index
    @file_reports = FileReport.all
    @file_report = FileReport.new
  end

  def show
    @file_report = FileReport.includes(:books).find(params[:id])
  end

  def create
    @file_report = FileReport.new(file_report_params)
    respond_to do |format|
      if @file_report.save
        # trigger_api_call(@file_report.data_file.path)
        format.html { redirect_to file_reports_path, notice: 'File uploaded successfully.' }
        format.json { render json: @file_report, status: :created, location: @file_report }
      else
        format.html { redirect_to file_reports_path, notice: @file_report.errors.full_messages.to_sentence }
        format.json { render json: @file_report.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def trigger_api_call(file_path)
    # Not getting any response from the url
    uri = URI.parse('​https://requestb.in/14rl2ir1')
    response = Net::HTTP.post_form(uri, 's3_url' => file_path)
    render json: response.body
  end

  def file_report_params
    params.require(:file_report).permit(:file_name, :data_file, :user_id)
  end
end
