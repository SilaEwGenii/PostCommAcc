class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :account
  validates :body, presence: true, length:{ minimum: 5}
end
