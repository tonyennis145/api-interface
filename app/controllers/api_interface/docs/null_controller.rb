module ApiInterface
  class Docs::NullController

  include Swagger::Blocks
    
  swagger_path "/" do
    operation :get do
      key :tags, ["Null Resource"]
      key :summary, "No API Routes specified!"
      key :description, "Looks like you haven't set up any routes. Create an api_options.yml file as per the readme here: https://github.com/tonyennis145/api-interface/blob/master/README.md"
    end
  end

  end
end