# frozen_string_literal: true

class AddPersonalInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, unique: true
  end
end
