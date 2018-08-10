/*
 * ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DefaultApi
 */
@Ignore
public class DefaultApiTest {

    private final DefaultApi api = new DefaultApi();

    
    /**
     * Get your public IP address
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getIpTest() throws ApiException {
        String format = null;
        String paramCallback = null;
        Object response = api.getIp(format, paramCallback);

        // TODO: test validations
    }
    
}