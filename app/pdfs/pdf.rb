class Pdf < Prawn::Document

  def initialize(page, view)
    super()
    @page = page
    @view = view
    
    move_down 10
    text "#{@page['first_name']} #{@page['last_name']}", :size => 25
    text "#{@page['email']}"
    text "#{@page['phone_number']}"
    text "#{@page['linkedin_url']}"
    text "#{@page['github_url']}"
    move_down 10
    font "Times-Roman", :style => :bold
    bounding_box([0, 550], :width => 250, :height => 220) do
    text "Profile: #{@page['short_bio']}" * 3,:size => 10, :color => "0000FF", :align => :left
    end
 
  
  end 

  # def thanks_message 
  #   move_down 15 
  #   text "Thank you for your order.",
  #   :indent_paragraphs => 40, :size => 13
  # end 

end