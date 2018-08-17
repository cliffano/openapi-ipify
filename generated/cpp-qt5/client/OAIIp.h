/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIIp.h
 *
 * 
 */

#ifndef OAIIp_H_
#define OAIIp_H_

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIIp: public OAIObject {
public:
    OAIIp();
    OAIIp(QString json);
    ~OAIIp();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIIp* fromJson(QString jsonString) override;

    QString* getIp();
    void setIp(QString* ip);


    virtual bool isSet() override;

private:
    QString* ip;
    bool m_ip_isSet;

};

}

#endif /* OAIIp_H_ */
