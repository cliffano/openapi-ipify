package org.openapitools.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2018-08-17T01:58:27.979Z[GMT]")

@Controller
@RequestMapping("${openapi.openapiIpify.base-path:}")
public class DefaultApiController implements DefaultApi {

    private final NativeWebRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public DefaultApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
