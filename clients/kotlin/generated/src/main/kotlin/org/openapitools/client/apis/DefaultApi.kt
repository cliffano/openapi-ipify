/**
 * openapi-ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 1.0.0-pre.0
 * Contact: blah@cliffano.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException

import org.openapitools.client.models.Ip
import org.openapitools.client.models.OneOfLessThanIpCommaStringGreaterThan

import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class DefaultApi(basePath: kotlin.String = defaultBasePath) : ApiClient(basePath) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.ipify.org")
        }
    }

    /**
     * enum for parameter format
     */
     enum class Format_getIp(val value: kotlin.String) {
         @Json(name = "json") json("json"),
         @Json(name = "jsonp") jsonp("jsonp"),
         ;
     }

    /**
    * Get your public IP address
    * 
    * @param format Response format (optional)
    * @param paramCallback JSONP callback function name (optional)
    * @return OneOfLessThanIpCommaStringGreaterThan
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun getIp(format: Format_getIp?, paramCallback: kotlin.String?) : OneOfLessThanIpCommaStringGreaterThan {
        val localVarResponse = getIpWithHttpInfo(format = format, paramCallback = paramCallback)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as OneOfLessThanIpCommaStringGreaterThan
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Get your public IP address
    * 
    * @param format Response format (optional)
    * @param paramCallback JSONP callback function name (optional)
    * @return ApiResponse<OneOfLessThanIpCommaStringGreaterThan?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun getIpWithHttpInfo(format: Format_getIp?, paramCallback: kotlin.String?) : ApiResponse<OneOfLessThanIpCommaStringGreaterThan?> {
        val localVariableConfig = getIpRequestConfig(format = format, paramCallback = paramCallback)

        return request<Unit, OneOfLessThanIpCommaStringGreaterThan>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation getIp
    *
    * @param format Response format (optional)
    * @param paramCallback JSONP callback function name (optional)
    * @return RequestConfig
    */
    fun getIpRequestConfig(format: Format_getIp?, paramCallback: kotlin.String?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (format != null) {
                    put("format", listOf(format.toString()))
                }
                if (paramCallback != null) {
                    put("callback", listOf(paramCallback.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.GET,
            path = "/",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

}