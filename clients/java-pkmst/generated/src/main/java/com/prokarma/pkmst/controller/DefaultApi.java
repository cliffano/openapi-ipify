/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (6.1.0-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.Ip;

import io.swagger.annotations.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

import java.util.List;
/**
 * Provides the info about api methods
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2022-08-10T13:01:24.010048Z[Etc/UTC]")
@Api(value = "Default", description = "the Default API")
public interface DefaultApi {

    @ApiOperation(value = "Get your public IP address", notes = "", response = Ip.class, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Your public IP address", response = Ip.class) })
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/",
        produces = { "application/json", "application/javascript", "text/plain" }
    )
    ResponseEntity<Ip> getIp(@ApiParam(value = "Response format", allowableValues = "json, jsonp")  @RequestParam(value = "format", required = false) String format,@ApiParam(value = "JSONP callback function name")  @RequestParam(value = "callback", required = false) String paramCallback, @RequestHeader(value = "Accept", required = false) String accept) throws Exception;

}