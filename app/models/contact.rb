class Contact < ActiveRecord::Base
	belongs_to :user
	validates :email, uniqueness: { scope: :user,
    message: "email already used" }
end
