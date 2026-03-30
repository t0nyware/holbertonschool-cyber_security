#!/bin/bash
grep -vE "^\s*#" /etc/snmp/snmpd.conf | grep "public"
