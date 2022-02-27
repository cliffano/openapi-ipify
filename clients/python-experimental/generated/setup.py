# coding: utf-8

"""
    openapi-ipify

    OpenAPI client for ipify, a simple public IP address API  # noqa: E501

    The version of the OpenAPI document: 1.0.0-pre.0
    Contact: blah@cliffano.com
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

REQUIRES = [
  "urllib3 >= 1.15",
  "certifi",
  "python-dateutil",
  "frozendict >= 2.0.3",
]

setup(
    name=NAME,
    version=VERSION,
    description="openapi-ipify",
    author="Cliffano Subagio",
    author_email="blah@cliffano.com",
    url="",
    keywords=["OpenAPI", "OpenAPI-Generator", "openapi-ipify"],
    python_requires=">=3.9",
    install_requires=REQUIRES,
    packages=find_packages(exclude=["test", "tests"]),
    include_package_data=True,
    license="MIT",
    long_description="""\
    OpenAPI client for ipify, a simple public IP address API  # noqa: E501
    """
)