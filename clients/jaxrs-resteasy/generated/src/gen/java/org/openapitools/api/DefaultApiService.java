package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;


import org.openapitools.model.Ip;

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.validation.constraints.*;
import javax.validation.Valid;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2024-03-12T12:45:25.598922914Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public interface DefaultApiService {
      Response getIp(String format,String paramCallback,SecurityContext securityContext)
      throws NotFoundException;
}
