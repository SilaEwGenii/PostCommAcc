class Subscribe < ApplicationRecord

    validates :subscribe, uniqueness: { scope: :account_id,
        message: "should happen once per year" }


    belongs_to :account 




end
