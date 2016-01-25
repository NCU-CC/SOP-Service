module API
  module Entities
    class Root < Grape::API
      # http://localhost:3000/api/v1/
      # format :json

      mount API::Entities::Place
      mount API::Entities::Unit
      mount API::Entities::Person
      mount API::Entities::Process
      
    end
  end
end