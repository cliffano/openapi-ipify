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
with Ada.Containers.Vectors;
package .Models is



   type Ip_Type is
     record
       Ip : Swagger.UString;
     end record;

   package Ip_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Ip_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Ip_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Ip_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Ip_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Ip_Type_Vectors.Vector);



end .Models;
