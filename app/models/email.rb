class Email < ApplicationRecord
  validates :email, presence: true
  validates :confirmed, presence: true
  validates :primary, presence: true
  belongs_to :user
end