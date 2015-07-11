class ChangeUrlsToString < ActiveRecord::Migration
  def change
  	remove_column :reports, :urls
  	add_column :reports, :url, :string
  end
end
