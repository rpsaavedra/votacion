json.array!(@instancia) do |instancium|
  json.extract! instancium, :id, :name, :votos, :disponible, :descripcion, :winner, :otherx
  json.url instancium_url(instancium, format: :json)
end
