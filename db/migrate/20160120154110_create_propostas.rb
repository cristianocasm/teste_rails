class CreatePropostas < ActiveRecord::Migration
  def change
    create_table :propostas do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor
      t.date :inicio
      t.date :fim
      t.string :cidade

      t.timestamps
    end
  end
end
