#!/bin/bash
whois "$1" | awk -F": +" "BEGIN{IGNORECASE=1} /^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\\/Province|Postal Code|Country|Phone|Fax|Email)/ {f=\$1; v=\$2; gsub(/^[ \t]+|[ \t]+$/, \"\", v); if (f ~ /Street$/i) print f \", \" v \" \"; else if (f ~ /Phone$/i || f ~ /Fax$/i) {print f \", \" v; print f \" Ext:,\"} else print f \", \" v}" | tr -d "\r" > "$1.csv"
