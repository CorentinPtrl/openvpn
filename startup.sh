#!/bin/bash
echo "Hello there"
ovpn_genconfig -u udp://0.0.0.0
/usr/local/bin/easyrsa_vars export > /etc/openvpn/vars

export EASYRSA_BATCH=1
export EASYRSA_REQ_CN="OpenVPN-CA"
export EASYRSA_REQ_OU="OpenVPN-Unit"
export EASYRSA_REQ_ORG="OpenVPN-Org"
export EASYRSA_REQ_CITY="City"
export EASYRSA_REQ_PROV="Province"
export EASYRSA_REQ_COUNTRY="US"
export EASYRSA_REQ_EMAIL="email@example.com"

ovpn_initpki nopass

ovpn_run
