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

#ifndef OAI_APIROUTER_H
#define OAI_APIROUTER_H

#include <QObject>
#include <QStringList>
#include <QSharedPointer>
#include <QList>
#include <QMultiMap>

#include <qhttpengine/socket.h>
#include <qhttpengine/handler.h>
#include <qhttpengine/qobjecthandler.h>

#include "OAIDefaultApiHandler.h"


namespace OpenAPI {

class RequestHandler : public  QHttpEngine::QObjectHandler
{
    Q_OBJECT
signals:
    void requestReceived(QHttpEngine::Socket *socket);

protected:
    virtual void process(QHttpEngine::Socket *socket, const QString &path){
        Q_UNUSED(path);
        emit requestReceived(socket);
    }
};

class ApiRouter : public QObject
{
    Q_OBJECT
public:
    ApiRouter();
    virtual ~ApiRouter();

    void setUpRoutes();
    void processRequest(QHttpEngine::Socket *socket);
private:
    QMultiMap<QString, std::function<void(QHttpEngine::Socket *)>> Routes;  
    
    OAIDefaultApiHandler *OAIDefaultApiApiHandler; 
};


}

#endif // OAI_APIROUTER_H