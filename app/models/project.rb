class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	belongs_to :user
	mount_uploader :preview, PreviewUploader

	validates_presence_of :name, :description, :url, message: "you can't keep them blank"

end
