<?php
/**
 * ApiServer
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Api
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * openapi-ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 5.0.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Api;

use Symfony\Component\DependencyInjection\Reference;

/**
 * ApiServer Class Doc Comment
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Api
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */
class ApiServer
{

    /**
     * @var array
     */
    private array $apis = array();

    /**
     * Adds an API handler to the server.
     *
     * @param string $api An API name of the handle
     * @param mixed $handler A handler to set for the given API
     */
    public function addApiHandler(string $api, $handler): void
    {
        if (isset($this->apis[$api])) {
            throw new \InvalidArgumentException('API has already a handler: '.$api);
        }

        $this->apis[$api] = $handler;
    }

    /**
     * Returns an API handler.
     *
     * @param string $api An API name of the handle
     * @return mixed Returns a handler
     * @throws \InvalidArgumentException When no such handler exists
     */
    public function getApiHandler(string $api)
    {
        if (!isset($this->apis[$api])) {
            throw new \InvalidArgumentException('No handler for '.$api.' implemented.');
        }

        return $this->apis[$api];
    }
}
