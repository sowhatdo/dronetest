#!/bin/bash
node entrypoint.js &
while true
do
PublicIP=$(curl -s https://ipinfo.io/ip)
PrivateIP=$(ip a | grep -E "inet.* eth")
DNSCheck=$(dig +short google.com)

[[ -z "$PublicIP" ]] && echo "Can't Reach internet" || echo "PublicIP Service2: $PublicIP" |  tee >(cat >&2)
[[ -z "$PrivateIP" ]] && echo "Can't get PrivateIP" || echo "PrivateIP Service2: $PrivateIP" |  tee >(cat >&2)
[[ -z "$DNSCheck" ]] && echo "DNS not working" || echo "DNS Service2 Working" |  tee >(cat >&2)

sleep 2
done
