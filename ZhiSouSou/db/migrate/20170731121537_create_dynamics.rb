class CreateDynamics < ActiveRecord::Migration[5.0]
  def change
    create_table :dynamics do |t|

      t.timestamps
    end
  end
end
