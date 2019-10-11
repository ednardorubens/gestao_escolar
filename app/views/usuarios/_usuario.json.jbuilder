json.extract! usuario, :id, :nome, :email, :ativo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
