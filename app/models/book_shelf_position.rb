class BookShelfPosition < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  enum status: [:readed, :want_to_read]
end
