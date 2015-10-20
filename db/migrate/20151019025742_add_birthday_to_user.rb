class AddBirthdayToUser < ActiveRecord::Migration
  def change
    remove_column :users, :dob, :date
    add_column :users, :birthday, :date
  end
end
