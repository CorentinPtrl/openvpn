#!/bin/bash



# Set Easy-RSA variables
export EASYRSA_BATCH=1
export EASYRSA_REQ_CN="OpenVPN-CA"
export EASYRSA_REQ_OU="OpenVPN-Unit"
export EASYRSA_REQ_ORG="OpenVPN-Org"
export EASYRSA_REQ_CITY="City"
export EASYRSA_REQ_PROV="Province"
export EASYRSA_REQ_COUNTRY="US"
export EASYRSA_REQ_EMAIL="email@example.com"

./files/yep.sh nopass
