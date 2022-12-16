class CreateSubscribes < ActiveRecord::Migration[6.0]
  def change
   

    create_table :subscribes do |t|
      t.integer :subscribe
      t.references :account, foreign_key: :true, null: false

      t.timestamps
    end
  end
end
