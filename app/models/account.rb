class Account < ApplicationRecord
  has_many :article, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :subscribe, dependent: :destroy
  validates :name, presence:true,
                                length: { maximum: 12 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                          format: { with: VALID_EMAIL_REGEX },
                          uniqueness: true
end
