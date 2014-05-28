class Author < ActiveRecord::Base
	validates :name, :surname, presence: true
    validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
	has_many :books
end
