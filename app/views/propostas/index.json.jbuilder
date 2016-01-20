json.array!(@propostas) do |proposta|
  json.extract! proposta, :id, :nome, :descricao, :valor, :inicio, :fim, :cidade
  json.url proposta_url(proposta, format: :json)
end
