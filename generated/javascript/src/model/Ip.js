/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 3.2.1-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.OpenapiIpify) {
      root.OpenapiIpify = {};
    }
    root.OpenapiIpify.Ip = factory(root.OpenapiIpify.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The Ip model module.
   * @module model/Ip
   * @version 0.9.0
   */

  /**
   * Constructs a new <code>Ip</code>.
   * @alias module:model/Ip
   * @class
   * @param ip {String} 
   */
  var exports = function(ip) {
    var _this = this;

    _this['ip'] = ip;
  };

  /**
   * Constructs a <code>Ip</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Ip} obj Optional instance to populate.
   * @return {module:model/Ip} The populated <code>Ip</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('ip')) {
        obj['ip'] = ApiClient.convertToType(data['ip'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {String} ip
   */
  exports.prototype['ip'] = undefined;



  return exports;
}));


