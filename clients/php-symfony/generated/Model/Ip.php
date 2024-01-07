<?php
/**
 * Ip
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server\Model
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

namespace OpenAPI\Server\Model;

use Symfony\Component\Validator\Constraints as Assert;
use JMS\Serializer\Annotation\Type;
use JMS\Serializer\Annotation\Accessor;
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the Ip model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */

class Ip 
{
        /**
     * @var string|null
     * @SerializedName("ip")
     * @Assert\NotNull()
     * @Assert\Type("string")
     * @Type("string")
     */
    protected ?string $ip = null;

    /**
     * Constructor
     * @param array|null $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        if (is_array($data)) {
            $this->ip = array_key_exists('ip', $data) ? $data['ip'] : $this->ip;
        }
    }

    /**
     * Gets ip.
     *
     * @return string|null
     */
    public function getIp(): ?string
    {
        return $this->ip;
    }



    /**
     * Sets ip.
     *
     * @param string|null $ip
     *
     * @return $this
     */
    public function setIp(?string $ip): self
    {
        $this->ip = $ip;

        return $this;
    }
}


