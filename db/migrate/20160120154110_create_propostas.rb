class CreatePropostas < ActiveRecord::Migration
  def change
    create_table :propostas do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor, :precision => 8, :scale => 2
      t.date :inicio
      t.date :fim
      t.string :cidade

      t.timestamps
    end
  end
end
