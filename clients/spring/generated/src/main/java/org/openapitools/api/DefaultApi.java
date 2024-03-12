/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.4.0).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import org.openapitools.model.Ip;
import io.swagger.v3.oas.annotations.ExternalDocumentation;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.annotation.Generated;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2024-03-12T12:56:41.257251792Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Validated
@Tag(name = "default", description = "the default API")
public interface DefaultApi {

    default Optional<NativeWebRequest> getRequest() {
        return Optional.empty();
    }

    /**
     * GET / : Get your public IP address
     *
     * @param format Response format (optional)
     * @param paramCallback JSONP callback function name (optional)
     * @return Your public IP address (status code 200)
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
        }
    )
    @RequestMapping(
        method = RequestMethod.GET,
        value = "/",
        produces = { "application/json", "application/javascript", "text/plain" }
    )
    
    default ResponseEntity<Ip> getIp(
        @Parameter(name = "format", description = "Response format", in = ParameterIn.QUERY) @Valid @RequestParam(value = "format", required = false) String format,
        @Parameter(name = "callback", description = "JSONP callback function name", in = ParameterIn.QUERY) @Valid @RequestParam(value = "callback", required = false) String paramCallback
    ) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/javascript"))) {
                    String exampleString = "Custom MIME type example not yet supported: application/javascript";
                    ApiUtil.setExampleResponse(request, "application/javascript", exampleString);
                    break;
                }
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    String exampleString = "{ \"ip\" : \"ip\" }";
                    ApiUtil.setExampleResponse(request, "application/json", exampleString);
                    break;
                }
                if (mediaType.isCompatibleWith(MediaType.valueOf("text/plain"))) {
                    String exampleString = "Custom MIME type example not yet supported: text/plain";
                    ApiUtil.setExampleResponse(request, "text/plain", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }

}
