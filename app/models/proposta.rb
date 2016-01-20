class Proposta < ActiveRecord::Base

  validates_presence_of :nome,
                        :descricao,
                        :cidade

  validates :valor, presence: true, numericality: true, format: { :with => /\A\d{1,6}\.\d{0,2}\z/ }

  # Valida se 'início' não está no passado e antes de 'fim'                        
  validates :inicio, date: true, date: { after_or_equal_to: Proc.new { Date.today } }, presence: true, on: [:create, :update]
  validates :fim, date: true, date: { after_or_equal_to: Proc.new { :inicio } }, on: [:create, :update]

end
