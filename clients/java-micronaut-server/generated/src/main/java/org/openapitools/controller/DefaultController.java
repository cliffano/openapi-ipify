/*
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 5.1.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.controller;

import io.micronaut.http.annotation.*;
import io.micronaut.core.annotation.Nullable;
import io.micronaut.core.convert.format.Format;
import io.micronaut.security.annotation.Secured;
import io.micronaut.security.rules.SecurityRule;
import reactor.core.publisher.Mono;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.exceptions.HttpStatusException;
import org.openapitools.model.Ip;
import javax.annotation.Generated;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

@Generated(value="org.openapitools.codegen.languages.JavaMicronautServerCodegen", date="2024-03-12T13:24:05.816327291Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Controller
@Tag(name = "Default", description = "The Default API")
public class DefaultController {
    /**
     * Get your public IP address
     *
     * @param _format Response format (optional)
     * @param paramCallback JSONP callback function name (optional)
     * @return Ip
     */
    @Operation(
        operationId = "getIp",
        summary = "Get your public IP address",
        responses = {
            @ApiResponse(responseCode = "200", description = "Your public IP address", content = {
                @Content(mediaType = "application/json", schema = @Schema(implementation = Ip.class)),
                @Content(mediaType = "application/javascript", schema = @Schema(implementation = Ip.class)),
                @Content(mediaType = "text/plain", schema = @Schema(implementation = Ip.class))
            })
        },
        parameters = {
            @Parameter(name = "_format", description = "Response format"),
            @Parameter(name = "paramCallback", description = "JSONP callback function name")
        }
    )
    @Get(uri="/")
    @Produces(value = {"application/json", "application/javascript", "text/plain"})
    @Secured({SecurityRule.IS_ANONYMOUS})
    public Mono<Ip> getIp(
        @QueryValue(value="format") @Nullable String _format, 
        @QueryValue(value="callback") @Nullable String paramCallback
    ) {
        // TODO implement getIp();
        return Mono.error(new HttpStatusException(HttpStatus.NOT_IMPLEMENTED, null));
    }

}
