class RemoveUserNameFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :user_name, :string
  end
end
