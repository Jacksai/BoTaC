class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :book_comments
  has_many :friends
  has_many :messages_send, class_name: "Message", foreign_key: :sender_id
  has_many :messages_get, class_name: "Message", foreign_key: :reciever_id
  has_many :book_shelf_positions

end
