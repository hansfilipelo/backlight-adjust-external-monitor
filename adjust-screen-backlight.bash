#!/bin/bash
set -e

delta=$1

current_val=$(sudo ddcutil getvcp 10 | awk '{print $9}' | tr -d ',')
next_val=$(($current_val + $delta))

if (( $next_val <= 0 ))
then
  next_val=5
fi

if (( $next_val > 100 ))
then
  next_val=100
fi

sudo ddcutil setvcp 10 $next_val
