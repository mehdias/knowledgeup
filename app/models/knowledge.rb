class Knowledge < ApplicationRecord
  validates :title, presence: true, length: { maximum: 80, minimum: 5}
  validates :description, presence: true, length: { maximum: 500, minimum: 10}
  validates :written_by, presence: true, length: {maximum: 30, minimum: 3}
end
