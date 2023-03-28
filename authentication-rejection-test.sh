#!/bin/bash

set -e

# This bind for a user succeeds normally
ldapsearch -LLL -H ldap://localhost:3893 -D  cn=serviceuser,cn=svcaccts,ou=users,dc=glauth,dc=com -w password -x -bdc=glauth,dc=com cn=hackers | grep posixAccount
# This bind for a service account succeeds normally
ldapsearch -LLL -H ldap://localhost:3893 -D cn=johndoe,cn=superheros,ou=users,dc=glauth,dc=com -w password -x -bdc=glauth,dc=com cn=hackers | grep posixAccount
