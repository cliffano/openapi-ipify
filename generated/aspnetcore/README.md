# Org.OpenAPITools - ASP.NET Core 2.0 Server

OpenAPI client for ipify, a simple public IP address API

## Run

Linux/OS X:

```
sh build.sh
```

Windows:

```
build.bat
```

## Run in Docker

```
cd src/Org.OpenAPITools
docker build -t org.openapitools .
docker run -p 5000:5000 org.openapitools
```
