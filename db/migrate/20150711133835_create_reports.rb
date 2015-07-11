class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
   	  t.text :urls, array: true, default: []
      t.timestamps null: false
    end
  end
end
