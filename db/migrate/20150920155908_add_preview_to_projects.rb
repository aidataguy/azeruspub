class AddPreviewToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :preview, :string
  end
end
