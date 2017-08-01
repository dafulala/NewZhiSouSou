class CreateMortgages < ActiveRecord::Migration[5.0]
  def change
    create_table :mortgages do |t|

      t.timestamps
    end
  end
end
