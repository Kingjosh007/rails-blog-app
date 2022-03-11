class Post < ApplicationRecord
  has_many :comments
  has_many :likes

  belongs_to :user

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_create :update_post_counter

  def update_post_counter
    user.update(posts_counter: user.posts.size)
  end

  def recent_comments
    comments.last(5)
  end
end
