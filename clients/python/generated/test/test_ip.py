# coding: utf-8

"""
    openapi-ipify

    OpenAPI client for ipify, a simple public IP address API

    The version of the OpenAPI document: 5.1.1-pre.0
    Contact: blah+oapicf@cliffano.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from openapiipify.models.ip import Ip

class TestIp(unittest.TestCase):
    """Ip unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Ip:
        """Test Ip
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Ip`
        """
        model = Ip()
        if include_optional:
            return Ip(
                ip = ''
            )
        else:
            return Ip(
                ip = '',
        )
        """

    def testIp(self):
        """Test Ip"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
