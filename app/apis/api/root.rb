module API
  class Root < Grape::API
    # http://localhost:3000/api/
    prefix 'sop'

    mount API::Ver1::Root
    # mount API::Entities::Place
    mount API::Entities::Root
    #mount API::Ver2::Root
  end
end