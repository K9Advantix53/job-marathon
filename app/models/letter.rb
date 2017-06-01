class Letter < ApplicationRecord
  validates :company, presence: true
  validates :position, presence: true
  validates :address, presence: true
end
