class Proposta < ActiveRecord::Base

  validates_presence_of :nome,
                        :descricao,
                        :valor,
                        :cidade

  # Valida se 'início' está no futuro e antes de 'fim'                        
  validates :inicio, date: true, date: { after_or_equal_to: Proc.new { DateTime.now } }, presence: true, on: [:create, :update]
  validates :fim, date: true, date: { after: Proc.new { :datahora_inicio } }, on: [:create, :update]

end
