#!/bin/bash
length=$1
< /dev/urandom tr -dc '[:alnum:]' | head -c "$length"; echo

