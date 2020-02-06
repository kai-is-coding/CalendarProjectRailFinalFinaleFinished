json.extract! user, :id, :name, :email, :password_digest, :admin, :appointments
json.url user_url(user, format: :json)
