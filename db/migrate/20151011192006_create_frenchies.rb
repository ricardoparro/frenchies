class CreateFrenchies < ActiveRecord::Migration
  def change
    create_table :frenchies do |t|

      t.timestamps null: false
    end
  end
end
