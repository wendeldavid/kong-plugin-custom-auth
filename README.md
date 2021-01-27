# kong-plugin-custom-auth

Recebe um Bearer token via Authorization header e em seguida chamva o endpoint de introspect e depois o de authorize, para então repassar o request ao upstream service.

Implementado baseado no [artigo](https://konghq.com/blog/custom-authentication-and-authorization-framework-with-kong/)
