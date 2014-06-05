class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :description, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  belongs_to :author
  has_and_belongs_to_many :tags
  has_many :book_comments
  enum state: [:pending, :accepted]

  # Liczenie średniej ocen
  def avg_grade
    if book_comments.count > 0
    sum = 0

    book_comments.each do |comment|
      sum = sum + comment.grade
    end

    return sum / book_comments.count

    else
      return 0
    end

  end

end
