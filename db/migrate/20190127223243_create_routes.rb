class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :route_name, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
