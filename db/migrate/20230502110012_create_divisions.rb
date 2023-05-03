class CreateDivisions < ActiveRecord::Migration[6.1]
  def change
    create_table :divisions do |t|
      t.string :division

      t.timestamps
    end
  end
end
