class Message < ActiveRecord::Base
  validates :title, :content, presence: true
  belongs_to :sender ,class_name: "User"
  belongs_to :reciever, class_name: "User"
end
