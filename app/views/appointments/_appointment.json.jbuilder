json.extract! appointment, :id, :title, :description, :date, :time, :user, :aside, :asideTo, :timeTo, :address, :latitude, :longitude, :notes
json.url appointment_url(appointment, format: :json)
