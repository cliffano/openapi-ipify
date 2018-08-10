# coding: utf-8

"""
    ipify

    OpenAPI client for ipify, a simple public IP address API  # noqa: E501

    OpenAPI spec version: 0.9.0
    Generated by: https://openapi-generator.tech
"""


from setuptools import setup, find_packages  # noqa: H301

NAME = "openapi-client"
VERSION = "1.0.0"
# To install the library, run the following
#
# python setup.py install
#
# prerequisite: setuptools
# http://pypi.python.org/pypi/setuptools

REQUIRES = ["urllib3 >= 1.15", "six >= 1.10", "certifi", "python-dateutil"]

setup(
    name=NAME,
    version=VERSION,
    description="ipify",
    author_email="",
    url="",
    keywords=["OpenAPI", "OpenAPI-Generator", "ipify"],
    install_requires=REQUIRES,
    packages=find_packages(),
    include_package_data=True,
    long_description="""\
    OpenAPI client for ipify, a simple public IP address API  # noqa: E501
    """
)
