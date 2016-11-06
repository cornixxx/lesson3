class Task < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4 }
  validates :priority, presence: true, exclusion: { in: [1..5] }

  enum status: [:open, :closed, :resolved]

  scope :by_priority, -> (priority) { where('priority = ?', priority) }
end
