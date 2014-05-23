class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :tags
  enum state: [:accepted, :pending]
end
