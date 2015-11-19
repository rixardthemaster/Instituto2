json.array!(@especialidads) do |especialidad|
  json.extract! especialidad, :id, :nombre
  json.url especialidad_url(especialidad, format: :json)
end
