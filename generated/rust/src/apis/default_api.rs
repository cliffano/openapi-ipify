/* 
 * ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * 
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct DefaultApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> DefaultApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> DefaultApiClient<C> {
        DefaultApiClient {
            configuration: configuration,
        }
    }
}

pub trait DefaultApi {
    fn get_ip(&self, format: &str, callback: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>DefaultApi for DefaultApiClient<C> {
    fn get_ip(&self, format: &str, callback: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/".to_string())
            .with_query_param("format".to_string(), format.to_string())
            .with_query_param("callback".to_string(), callback.to_string())
            .execute(self.configuration.borrow())
    }

}
