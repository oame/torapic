class API::V1::Base < Grape::API
  version 'v1'

  mount API::V1::Photos
end
