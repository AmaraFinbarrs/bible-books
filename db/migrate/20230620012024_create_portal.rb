class CreatePortal < ActiveRecord::Migration[6.1]
  def change
    create_table :portals do |t|
      t.string :name

      t.timestamps
    end
  end
end
