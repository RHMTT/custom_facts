#!/usr/bin/bash
#Custom script of fact
apache=$(httpd -v | awk 'NR==1{print $3}' |awk -F'/' '{print $2}')

cat << EOF
{ "Apache Version": "$apache",
}
EOF
