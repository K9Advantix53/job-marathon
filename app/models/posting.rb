class Posting < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :company, presence: true
end
