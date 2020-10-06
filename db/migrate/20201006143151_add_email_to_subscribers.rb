class AddEmailToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :email, :string
  end
end
