class Subscriber < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validate :name_cant_be_kim

	def name_cant_be_kim
		if name == "Kim Jung Un"
			errors.add(:name, "Kim Jung Un Isn't Allowed.")
		end
	end

end
