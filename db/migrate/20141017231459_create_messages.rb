class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.references :estimate, index: true

      t.timestamps
    end
  end
end
