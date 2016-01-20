require 'test_helper'

class PropostaTest < ActiveSupport::TestCase
  should validate_presence_of(:nome)
  should validate_presence_of(:descricao)
  should validate_presence_of(:valor)
  should validate_presence_of(:inicio).with_message(I18n.t('activerecord.errors.messages.not_a_date'))
  should validate_presence_of(:fim).with_message(I18n.t('activerecord.errors.messages.not_a_date'))
  should validate_presence_of(:cidade)
end
