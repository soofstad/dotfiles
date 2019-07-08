function unset_proxy --description "Unset all HTTP proxy env vars"
	set --erase http_proxy
	set --erase https_proxy
	set --erase HTTP_PROXY
	set --erase HTTPS_PROXY
end
