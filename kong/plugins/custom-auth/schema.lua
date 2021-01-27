local typedefs = require "kong.db.schema.typedefs"

local token_header =  {
  type = "string",
  default = "Authorization",
  required = true
}

local schema = {
  name = "custom-auth",
  fields = {
    { protocols = typedefs.protocols_http },
    { config = {
        type = "record",
        fields = {
          { introspection_endpoint = typedefs.url({ required = true }) },
          { authorization_endpoint = typedefs.url({ required = true }) },
          { token_header = token_header }
        }
      },
    },
  },
}

return schema