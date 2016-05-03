class Pdf < Prawn::Document

  def initialize(page, view)
    super()
    @page = page
    @view = view
    text "#{@page.body}",
    :indent_paragraphs => 40, :size => 13
    
    thanks_message
  
  end 

  def thanks_message 
    move_down 15 
    text "Thank you for your order.",
    :indent_paragraphs => 40, :size => 13
  end 

end