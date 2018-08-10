<?php
/**
 * OpenAPIServerExtension
 *
 * PHP version 5
 *
 * @category Class
 * @package  OpenAPI\Server\DependencyInjection
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\DependencyInjection;

use Symfony\Component\Config\FileLocator;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Extension\Extension;
use Symfony\Component\DependencyInjection\Loader\YamlFileLoader;

/**
 * OpenAPIServerExtension Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Server\DependencyInjection
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */
class OpenAPIServerExtension extends Extension
{
    public function load(array $configs, ContainerBuilder $container)
    {
        $loader = new YamlFileLoader($container, new FileLocator(__DIR__.'/../Resources/config'));
        $loader->load('services.yml');
    }

    public function getAlias()
    {
        return 'open_apiserver';
    }
}
