/**
* openapi-ipify
* OpenAPI client for ipify, a simple public IP address API
*
* The version of the OpenAPI document: 4.0.1-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.database.models

import org.ktorm.dsl.*
import org.ktorm.schema.*
import org.ktorm.database.Database
import .*


/**
 * 
 * @param ip 
 */
object Ips : BaseTable<Ip>("Ip") {
    val ip = text("ip")

    /**
     * Create an entity of type Ip from the model
     */
    override fun doCreateEntity(row: QueryRowSet, withReferences: Boolean) = Ip(
        ip = row[ip] ?: "" /* kotlin.String */
    )

    /**
    * Assign all the columns from the entity of type Ip to the DML expression.
    *
    * Usage:
    *
    * ```kotlin
    * let entity = Ip()
    * database.update(Ips, {
    *     assignFrom(entity)
    * })
    * ```
    * @return the builder with the columns for the update or insert.
    */
    fun AssignmentsBuilder.assignFrom(entity: Ip) {
        this.apply {
            set(Ips.ip, entity.ip)
        }
    }

}


