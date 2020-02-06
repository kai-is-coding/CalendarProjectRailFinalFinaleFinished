json.extract! note, :id, :message, :created_at, :updated_at, :appointment_id, :user_id
json.url note_url(note, format: :json)
