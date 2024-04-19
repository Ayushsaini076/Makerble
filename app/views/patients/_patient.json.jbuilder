json.extract! patient, :id, :name, :gender, :age, :disease, :created_at, :updated_at
json.url patient_url(patient, format: :json)
