json.array!(@options) do |option|
  json.extract! option, :id, :name, :votos, :disponible, :instancia, :descripcion
  json.url option_url(option, format: :json)
end
