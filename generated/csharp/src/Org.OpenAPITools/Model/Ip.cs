/* 
 * openapi-ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// Ip
    /// </summary>
    [DataContract]
    public partial class Ip :  IEquatable<Ip>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Ip" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Ip() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Ip" /> class.
        /// </summary>
        /// <param name="ip">ip (required).</param>
        public Ip(string ip = default(string))
        {
            // to ensure "ip" is required (not null)
            if (ip == null)
            {
                throw new InvalidDataException("ip is a required property for Ip and cannot be null");
            }
            else
            {
                this._Ip = ip;
            }
        }
        
        /// <summary>
        /// Gets or Sets _Ip
        /// </summary>
        [DataMember(Name="ip", EmitDefaultValue=false)]
        public string _Ip { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Ip {\n");
            sb.Append("  _Ip: ").Append(_Ip).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as Ip);
        }

        /// <summary>
        /// Returns true if Ip instances are equal
        /// </summary>
        /// <param name="input">Instance of Ip to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Ip input)
        {
            if (input == null)
                return false;

            return 
                (
                    this._Ip == input._Ip ||
                    (this._Ip != null &&
                    this._Ip.Equals(input._Ip))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this._Ip != null)
                    hashCode = hashCode * 59 + this._Ip.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
