class BookComment < ActiveRecord::Base
  validates :grade, :content presence: true
  validates :grade, numericality: {greater_than: 0, less_than: 11}
  validates :content, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
  belongs_to :user
  belongs_to :book
end
