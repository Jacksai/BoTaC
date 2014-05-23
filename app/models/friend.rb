class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend , :class_name => 'User'
  enum status: [:friends, :sent, :requested]
end
