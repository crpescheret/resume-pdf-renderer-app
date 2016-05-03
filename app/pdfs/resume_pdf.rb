class ResumePdf < Prawn::Document
  def initialize(resume, view)
    super()
    text "This is a resume. Resume #1"
  end
end