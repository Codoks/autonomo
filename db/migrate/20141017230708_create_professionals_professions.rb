class CreateProfessionalsProfessions < ActiveRecord::Migration
  def change
    create_table :professionals_professions do |t|
      t.references :professional, index: true
      t.references :profession, index: true

      t.timestamps
    end
  end
end
