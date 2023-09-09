--[[
  openapi-ipify

  OpenAPI client for ipify, a simple public IP address API

  The version of the OpenAPI document: 4.0.1-pre.0
  Contact: blah@cliffano.com
  Generated by: https://openapi-generator.tech
]]

-- ip class
local ip = {}
local ip_mt = {
	__name = "ip";
	__index = ip;
}

local function cast_ip(t)
	return setmetatable(t, ip_mt)
end

local function new_ip(ip)
	return cast_ip({
		["ip"] = ip;
	})
end

return {
	cast = cast_ip;
	new = new_ip;
}
