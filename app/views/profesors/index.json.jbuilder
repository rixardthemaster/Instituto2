json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :nombreprof, :approf, :correo, :especialidad_id
  json.url profesor_url(profesor, format: :json)
end
