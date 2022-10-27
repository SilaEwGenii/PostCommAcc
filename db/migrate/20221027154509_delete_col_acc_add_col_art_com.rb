class DeleteColAccAddColArtCom < ActiveRecord::Migration[6.0]
  def change
    remove_column :accounts, :article_id
    remove_column :accounts, :comment_id
    add_column :articles, :account_id, :integer 
    add_column :comments, :account_id, :integer
  end
end
