Rails.application.config.middleware.insert_before 0, Back::Cors do
  allow do
    origins 'http://localhost:3001'

    resource '*'
      headers: :any
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
