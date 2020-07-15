class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user
  has_one_attached :image
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
