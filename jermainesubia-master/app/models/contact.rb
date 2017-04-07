class Contact < ApplicationRecord
	email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates :first_name, :presence => true,
			  :length          => { :maximum => 50 }
	validates :last_name, :presence => true,
			  :length          => { :maximum => 50 }
	validates :email, :presence => true,
			  :format          => {:with => email_regex }
	validates :message, :presence => true,
			  :length          => { :maximum => 5000 }

end
