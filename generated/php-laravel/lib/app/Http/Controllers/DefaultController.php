<?php

/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Source files are located at:
 *
 * > swagger-codegen/modules/swagger-codegen/src/main/resources/php-laravel/
 */


namespace App\Http\Controllers;

use Illuminate\Support\Facades\Request;

class DefaultController extends Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
    }

    /**
     * Operation getIp
     *
     * Get your public IP address.
     *
     *
     * @return Http response
     */
    public function getIp()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        $format = $input['format'];

        $callback = $input['callback'];


        return response('How about implementing getIp as a get method ?');
    }
}
