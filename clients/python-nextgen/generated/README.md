# openapiipify
OpenAPI client for ipify, a simple public IP address API

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.3.1-pre.0
- Package version: 3.3.1-pre.0
- Build package: org.openapitools.codegen.languages.PythonNextgenClientCodegen
For more information, please visit [https://github.com/cliffano/openapi-ipify](https://github.com/cliffano/openapi-ipify)

## Requirements.

Python 3.7+

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/cliffano/openapi-ipify.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/cliffano/openapi-ipify.git`)

Then import the package:
```python
import openapiipify
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import openapiipify
```

### Tests

Execute `pytest` to run the tests.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import openapiipify
from openapiipify.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.ipify.org
# See configuration.py for a list of all supported configuration parameters.
configuration = openapiipify.Configuration(
    host = "https://api.ipify.org"
)



# Enter a context with an instance of the API client
with openapiipify.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapiipify.DefaultApi(api_client)
    format = 'format_example' # str | Response format (optional)
    param_callback = 'param_callback_example' # str | JSONP callback function name (optional)

    try:
        # Get your public IP address
        api_response = api_instance.get_ip(format=format, param_callback=param_callback)
        print("The response of DefaultApi->get_ip:\n")
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DefaultApi->get_ip: %s\n" % e)

```

## Documentation for API Endpoints

All URIs are relative to *https://api.ipify.org*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**get_ip**](docs/DefaultApi.md#get_ip) | **GET** / | Get your public IP address


## Documentation For Models

 - [Ip](docs/Ip.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization

Endpoints do not require authorization.


## Author

blah@cliffano.com

