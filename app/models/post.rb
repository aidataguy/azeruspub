class Post < ActiveRecord::Base
	searchkick autocomplete: ['title', 'description', 'tag_list']
	
	extend FriendlyId
	friendly_id :title, use: :slugged


	def should_generate_new_friendly_id?
		new_record? 
	end

	validates_presence_of :title, :description, :content, :tag_list, message: "can't be blank"
	acts_as_taggable
	belongs_to :user
	mount_uploader :preview, PreviewUploader

end
