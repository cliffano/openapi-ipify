package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Ip.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-12T13:27:33.728170350Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class Ip(
  ip: String
)

object Ip {
  implicit lazy val ipJsonFormat: Format[Ip] = Json.format[Ip]
}

