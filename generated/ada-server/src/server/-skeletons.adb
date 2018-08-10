--  ipify
--  OpenAPI client for ipify, a simple public IP address API
--
--  OpenAPI spec version: 0.9.0
--  
--
--  NOTE: This package is auto generated by the swagger code generator 3.2.1-SNAPSHOT.
--  https://openapi-generator.tech
--  Do not edit the class manually.
with Swagger.Streams;
with Swagger.Servers.Operation;
package body .Skeletons is

   package body Skeleton is


      package API_Get_Ip is
         new Swagger.Servers.Operation (Handler => Get_Ip,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/");

      --  Get your public IP address
      procedure Get_Ip
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Impl : Implementation_Type;
         Format : Swagger.Nullable_UString;
         Callback : Swagger.Nullable_UString;
         Result : Swagger.Object;
      begin
         Swagger.Servers.Get_Query_Parameter (Req, "format", Format);
         Swagger.Servers.Get_Query_Parameter (Req, "callback", Callback);
         Impl.Get_Ip
            (Format,
             Callback, Result, Context);
         if Context.Get_Status = 200 then
            Stream.Start_Document;
            .Models.Serialize (Stream, "", Result);
            Stream.End_Document;
         end if;
      end Get_Ip;

      procedure Register (Server : in out Swagger.Servers.Application_Type'Class) is
      begin
         Swagger.Servers.Register (Server, API_Get_Ip.Definition);
      end Register;

   end Skeleton;

   package body Shared_Instance is


      --  Get your public IP address
      procedure Get_Ip
         (Req     : in out Swagger.Servers.Request'Class;
          Reply   : in out Swagger.Servers.Response'Class;
          Stream  : in out Swagger.Servers.Output_Stream'Class;
          Context : in out Swagger.Servers.Context_Type) is
         Format : Swagger.Nullable_UString;
         Callback : Swagger.Nullable_UString;
         Result : Swagger.Object;
      begin
         Swagger.Servers.Get_Query_Parameter (Req, "format", Format);
         Swagger.Servers.Get_Query_Parameter (Req, "callback", Callback);
         Server.Get_Ip
            (Format,
             Callback, Result, Context);
         if Context.Get_Status = 200 then
            Stream.Start_Document;
            .Models.Serialize (Stream, "", Result);
            Stream.End_Document;
         end if;
      end Get_Ip;

      package API_Get_Ip is
         new Swagger.Servers.Operation (Handler => Get_Ip,
                                        Method  => Swagger.Servers.GET,
                                        URI     => "/");

      procedure Register (Server : in out Swagger.Servers.Application_Type'Class) is
      begin
         Swagger.Servers.Register (Server, API_Get_Ip.Definition);
      end Register;

      protected body Server is
         --  Get your public IP address
         procedure Get_Ip
            (Format : in Swagger.Nullable_UString;
             Callback : in Swagger.Nullable_UString;
             Result : out Swagger.Object;
             Context : in out Swagger.Servers.Context_Type) is
         begin
            Impl.Get_Ip
               (Format,
                Callback,
                Result,
                Context);
         end Get_Ip;

      end Server;

   end Shared_Instance;

end .Skeletons;
