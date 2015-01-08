class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.decimal :valor
      t.references :estimate, index: true
      t.integer :avaliation

      t.timestamps
    end
  end
end
