class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :mobile_number, :bigint
    add_column :users, :password, :string
    add_reference :users, :portal, foreign_key: true
  end
end
