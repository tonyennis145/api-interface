module ApiInterface
  class UiController < ApplicationController
  
    include Swagger::Blocks
    layout "api_interface/swagger_layout", only: "index"

    swagger_root do
      key :swagger, '2.0'
      key :host, "/"
      key :basePath, '/api/v1'
      key :consumes, ['application/json']
      key :produces, ['application/json']
    end

    NULL_DOCS_CLASSES = [
      Docs::NullController,
      self
    ].freeze

    def index

    end

    def start
      render json: Swagger::Blocks.build_root_json(NULL_DOCS_CLASSES)
    end
    
  end
end