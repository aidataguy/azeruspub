class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
