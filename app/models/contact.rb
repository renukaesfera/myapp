class Contact < ApplicationRecord
	validates :name, presence: true, length:{maximum:25}
	Valid_Email= /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
	validates :email, presence: true, format: {with:Valid_Email}
	validates :message, presence: true, length:{maximum:125}
end
