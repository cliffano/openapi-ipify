/*
 * ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * 
 * Generated by: https://openapi-generator.tech
 */

using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.SwaggerGen;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using Org.OpenAPITools.Attributes;
using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Controllers
{ 
    /// <summary>
    /// 
    /// </summary>
    public class DefaultApiController : Controller
    { 
        /// <summary>
        /// Get your public IP address
        /// </summary>
        /// <param name="format">Response format</param>
        /// <param name="callback">JSONP callback function name</param>
        /// <response code="200">IP</response>
        [HttpGet]
        [Route("/")]
        [ValidateModelState]
        [SwaggerOperation("GetIp")]
        [SwaggerResponse(statusCode: 200, type: typeof(Object), description: "IP")]
        public virtual IActionResult GetIp([FromQuery]string format, [FromQuery]string callback)
        { 
            //TODO: Uncomment the next line to return response 200 or use other options such as return this.NotFound(), return this.BadRequest(..), ...
            // return StatusCode(200, default(Object));

            string exampleJson = null;
            
            var example = exampleJson != null
            ? JsonConvert.DeserializeObject<Object>(exampleJson)
            : default(Object);
            //TODO: Change the data returned
            return new ObjectResult(example);
        }
    }
}
