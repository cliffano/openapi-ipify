--  openapi_ipify
--  OpenAPI client for ipify, a simple public IP address API
--
--  OpenAPI spec version: 0.9.0
--  Contact: blah@cliffano.com
--
--  NOTE: This package is auto generated by the swagger code generator 3.2.1-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.
with Swagger.Streams;
package body .Clients is

   --  Get your public IP address
   procedure Get_Ip
      (Client : in out Client_Type;
       Format : in Swagger.Nullable_UString;
       Callback : in Swagger.Nullable_UString;
       Result : out Swagger.Object) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((1 => Swagger.Clients.*_*));

      URI.Add_Param ("format", Format);
      URI.Add_Param ("callback", Callback);
      URI.Set_Path ("/");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Get_Ip;
end .Clients;
