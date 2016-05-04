
class Pdf < Prawn::Document
  
  
  def initialize(user, view)
    super()
    @user = user
    @view = view
    
    move_down 10
    text "#{@user['first_name']} #{@user['last_name']}", :size => 25
    text "Email: #{@user['email']}"
    text "Phone Number: #{@user['phone_number']}"
    text "Linkedin: #{@user['linkedin_url']}"
    text "Github: #{@user['github_url']}"
    text "Blog: #{@user['blog']}"
    text "Twitter: #{@user['twitter_handle']}"
    text "Resume URL: #{@user['resume_url']}"
    # image "#{Prawn::DATADIR}/#{@user['photo']}"
    move_down 10
    font "Times-Roman", :style => :bold
    bounding_box([0, 550], :width => 250, :height => 220) do
    text "Profile: #{@user['short_bio']}" * 3,:size => 10, :color => "0000FF", :align => :left
    end
    @user["experiences"][0].each { |k,v| text "#{k}: #{v}" unless "#{k}"==("id".to_sym)}
    move_down 10
    @user["educations"].each {|x| x.each { |k,v| text "#{k}: #{v}" }}
    move_down 10
    @user["skills"].each {|x| x.each {|k,v| text "#{k}: #{v}"}}
   end  
    


end
  

