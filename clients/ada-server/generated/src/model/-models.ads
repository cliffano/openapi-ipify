--  openapi_ipify
--  OpenAPI client for ipify, a simple public IP address API
--
--  The version of the OpenAPI document: 5.1.1_pre.0
--  Contact: blah+oapicf@cliffano.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 7.4.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with Swagger.Streams;
with Ada.Containers.Vectors;
package .Models is
   pragma Style_Checks ("-bmrIu");



   type Ip_Type is
     record
       Ip : Swagger.UString;
     end record;


   package Ip_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => .Models.Ip_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in .Models.Ip_Type);
   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Ip_Type_Vectors.Vector);
   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out .Models.Ip_Type);
   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : in out Ip_Type_Vectors.Vector);


end .Models;
