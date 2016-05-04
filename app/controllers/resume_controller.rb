class ResumeController < ApplicationController
  def index
    @resume = Resume.all
  end

  def show
    @resume = Resume.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResumePdf.new(@resume, view_context)
        send_data pdf.render, 
        filename: "resume_#{@resume}.pdf",
        type: "application/pdf",
        disposition: "inline"
      end
    end
  end
end
