/*
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 1.0.0-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.api;

import io.micronaut.http.annotation.*;
import io.micronaut.core.annotation.*;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.core.convert.format.Format;
import reactor.core.publisher.Mono;
import org.openapitools.model.Ip;
import org.openapitools.model.OneOfIpstring;
import javax.annotation.Generated;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.validation.constraints.*;

@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-03-05T05:05:40.923594Z[Etc/UTC]")
@Client("${base-path}")
public interface DefaultApi {
    /**
     * Get your public IP address
     *
     * @param _format Response format (optional)
     * @param paramCallback JSONP callback function name (optional)
     * @return OneOfIpstring
     */
    @Get(uri="/")
    @Consumes(value={"*/*"})
    Mono<OneOfIpstring> getIp(
        @QueryValue(value="format") @Nullable String _format, 
        @QueryValue(value="callback") @Nullable String paramCallback
  );
}
