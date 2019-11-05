#!/bin/bash
curl -X GET "https://api.cloudflare.com/client/v4/zones?name=example.com&status=active&account.id=01a7362d577a6c3019a474fd6f485823&account.name=Demo Account&page=1&per_page=20&order=status&direction=desc&match=all" \
     -H "X-Auth-Email: hansnas1020@gmail.com" \
     -H "X-Auth-Key: 9399b127beab9e2736b2a0de1fed76cdf4ac1" \
     -H "Content-Type: application/json"
