class Email < ApplicationRecord
  belongs_to :user
  validates :email, presence: true
  validates :confirmed, presence: true
  validates :primary, presence: true
end