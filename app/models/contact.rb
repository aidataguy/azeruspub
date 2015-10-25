class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :description,   :validate => true
  attribute :nickname,  :captcha  => true
  attribute :phone
  attribute :type
  attribute :budget
  attribute :messenger_id



  def headers
  	{
	  	:subject => "Contact Form",
	  	:to => "hey@thedesignable.com",
	  	:from => %("#{name}" <#{email}>)
	  }
	end
end
