/**
 * ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_QOBJECT_WRAPPER_H
#define OAI_QOBJECT_WRAPPER_H

#include <QObject>

namespace OpenAPI {

    template <typename ObjectPtrT>
    class OAIQObjectWrapper : public QObject {
        public:
            OAIQObjectWrapper(ObjectPtrT ptr){
                data = ptr;
            }
            ~OAIQObjectWrapper(){
                delete data;
            }
        private :
            ObjectPtrT data;
    };

}

#endif // OAI_QOBJECT_WRAPPER_H