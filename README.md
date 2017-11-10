# API Interface 
- Swagger UI interface as mountable gem
- Repurposed from https://github.com/jensoleg/swagger-ui
- Demo here: swaggerui.herokuapp.com/?url=http://petstore.swagger.io/v2/swagger.json#!/pet/addPet

```
gem "api_interface"
```

```
bundle install
```

```
# routes.rb
mount ApiInterface::Engine => "/docs"
```

# Making changes to UI

- Make the changes to source files in the `lib/swagger-ui` directory
- Compile them down to swagger-ui.min.js

```
npm install
gulp
```

# To Do

- Clean up application.html.erb haphazard js
- Import up to date js libraries from gems instead of using copies 