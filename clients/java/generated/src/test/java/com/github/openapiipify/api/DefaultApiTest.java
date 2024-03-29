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


package com.github.openapiipify.api;

import com.github.openapiipify.ApiException;
import com.github.openapiipify.model.Ip;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DefaultApi
 */
@Disabled
public class DefaultApiTest {

    private final DefaultApi api = new DefaultApi();

    /**
     * Get your public IP address
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getIpTest() throws ApiException {
        String format = null;
        String paramCallback = null;
        Ip response = api.getIp(format, paramCallback);
        // TODO: test validations
    }

}
