class PagesController < ApplicationController

  def index 
    @pages = Page.all
  end
  
  def show
    @user = Unirest.get("https://thawing-lake-55981.herokuapp.com/students/#{params[:id]}").body
    respond_to do |format|
    format.html 
    format.pdf do 
      pdf = Pdf.new(@user, view_context)
      send_data pdf.render, 
      filename: "#{@user['id']}.pdf",
      type: "application/pdf", 
      disposition: "inline"
      end 
    end 
  end 
  
 
  def new
  end

  def create 
    @user = Page.create(body: params[:body])
    redirect_to '/pages/{@user.id}'
  end

end 