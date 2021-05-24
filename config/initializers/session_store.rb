if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_spacey_server", domain: "https://spacey-server.herokuapp.com/"
else
  Rails.application.config.session_store :cookie_store, key: "_spacey_server"
end

