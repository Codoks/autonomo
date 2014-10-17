class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.references :client, index: true
      t.references :professional, index: true

      t.timestamps
    end
  end
end
