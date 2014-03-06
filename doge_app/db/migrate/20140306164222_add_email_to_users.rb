class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :confessions, :email, :string
  end
end
