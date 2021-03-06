module API
  module Ver1
    class Root < Grape::API
      # http://localhost:3000/api/v1/
      version 'v1'
      format :json
      
      mount API::Ver1::Processes
      mount API::Ver1::Steps
      mount API::Ver1::People
      mount API::Ver1::Units
      mount API::Ver1::Places
    end
  end
end