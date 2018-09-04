# frozen_string_literal: true

if %w[production staging].include? Rails.env
  Datadog.configure do |c|
    c.use :rails, service_name: "readership-map-#{Rails.env}"
    c.use :http, service_name: "readership-map-#{Rails.env}-http"
  end
end
