class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf_cnpj
      t.references :user, index: true

      t.timestamps
    end
  end
end
