class AddedResumeStuffToPages < ActiveRecord::Migration
  def change
  
  add_column :pages, :first_name, :string
  add_column :pages, :last_name, :string
  add_column :pages, :email, :string
  add_column :pages, :phone_number, :string
  add_column :pages, :short_bio, :string
  add_column :pages, :linkedin_url, :string
  add_column :pages, :github_url, :string

  end
end
