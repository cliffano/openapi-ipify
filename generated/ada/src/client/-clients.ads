--  ipify
--  OpenAPI client for ipify, a simple public IP address API
--
--  OpenAPI spec version: 0.9.0
--  
--
--  NOTE: This package is auto generated by the swagger code generator 3.2.1-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.
with .Models;
with Swagger.Clients;
package .Clients is

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  Get your public IP address
   procedure Get_Ip
      (Client : in out Client_Type;
       Format : in Swagger.Nullable_UString;
       Callback : in Swagger.Nullable_UString;
       Result : out Swagger.Object);

end .Clients;
