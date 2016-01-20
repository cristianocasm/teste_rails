require 'test_helper'

class PropostaTest < ActiveSupport::TestCase
  should validate_presence_of(:nome)
  should validate_presence_of(:descricao)
  should validate_presence_of(:valor)
  should validate_presence_of(:inicio)
  should validate_presence_of(:fim)
  should validate_presence_of(:cidade)
end
