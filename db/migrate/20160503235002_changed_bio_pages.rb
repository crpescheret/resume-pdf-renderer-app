class ChangedBioPages < ActiveRecord::Migration
  def change
    change_column :pages, :short_bio, :text

  end
end
