/*
 * ipify
 *
 * OpenAPI client for ipify, a simple public IP address API
 *
 * API version: 0.9.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"net/http"
)

// GetIp - Get your public IP address
func GetIp(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json; charset=UTF-8")
	w.WriteHeader(http.StatusOK)
}