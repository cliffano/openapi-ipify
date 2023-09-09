/*
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 4.0.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator.
 * https://github.com/OpenAPITools/openapi-generator
 *
 * OpenAPI generator version: 6.6.0
 */


import http from "k6/http";
import { group, check, sleep } from "k6";

const BASE_URL = "https://api.ipify.org";
// Sleep duration between successive requests.
// You might want to edit the value of this variable or remove calls to the sleep function on the script.
const SLEEP_DURATION = 0.1;
// Global variables should be initialized.

export default function() {
    group("/", () => {
        let format = 'TODO_EDIT_THE_FORMAT'; // specify value as there is no example value for this parameter in OpenAPI spec
        let callback = 'TODO_EDIT_THE_CALLBACK'; // specify value as there is no example value for this parameter in OpenAPI spec

        // Request No. 1: getIp
        {
            let url = BASE_URL + `/?format=${format}&callback=${callback}`;
            let request = http.get(url);

            check(request, {
                "Your public IP address": (r) => r.status === 200
            });
        }
    });

}
