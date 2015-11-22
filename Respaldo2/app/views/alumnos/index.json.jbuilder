json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombreal, :appal
  json.url alumno_url(alumno, format: :json)
end
