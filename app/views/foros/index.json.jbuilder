json.array!(@foros) do |foro|
  json.extract! foro, :id, :titulo, :contenido, :usuario_id
  json.url foro_url(foro, format: :json)
end
