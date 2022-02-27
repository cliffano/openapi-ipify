/*
 * openapi-ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 1.0.0-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;

namespace Org.OpenAPITools.Apis
{ 
    public partial class DefaultApi
    { 
        [FunctionName("DefaultApi_GetIp")]
        public async Task<IActionResult> _GetIp([HttpTrigger(AuthorizationLevel.Anonymous, "GET", Route = "/")]HttpRequest req, ExecutionContext context)
        {
            var method = this.GetType().GetMethod("GetIp");

            return method != null 
                ? (await ((Task<IActionResult>)method.Invoke(this, new object[] { req, context })).ConfigureAwait(false))
                : new StatusCodeResult((int)HttpStatusCode.NotImplemented);
        }
    }
}
