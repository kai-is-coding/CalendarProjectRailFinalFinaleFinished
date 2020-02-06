#define what the cookies going to be structured like
Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "your-production-app-here.com"
# if Rails.env === 'production'
#   Rails.application.config.session_store :cookie_store, key: '_testing-user', domain: 'http://localhost:3000/'
# else
#   Rails.application.config.session_store :cookie_store, key: '_testing-user'
# end
