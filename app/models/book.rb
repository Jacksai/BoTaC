class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  belongs_to :author
  has_and_belongs_to_many :tags
  has_many :book_comments
  enum state: [:pending, :accepted]
end
