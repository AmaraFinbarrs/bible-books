class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :mobile_number, :bigint
    add_column :users, :password, :string
    add_column :users, :portal, :reference
  end
end
