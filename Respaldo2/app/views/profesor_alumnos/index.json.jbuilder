json.array!(@profesor_alumnos) do |profesor_alumno|
  json.extract! profesor_alumno, :id, :profesor_id, :alumno_id
  json.url profesor_alumno_url(profesor_alumno, format: :json)
end
