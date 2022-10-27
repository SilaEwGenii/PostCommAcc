class Account < ApplicationRecord
  has_many :article
  has_many :comment


end
