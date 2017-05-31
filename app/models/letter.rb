class Letter < ApplicationRecord
  validates :company, presence: true
  validates :position, presence: true
  validates :cv, presence: true
  validates :comment, presence: true
  validates :address, presence: true
end
