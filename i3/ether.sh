#!/bin/bash

ipaddr=`ip a s enp2s0 | awk '/inet /{print $2}' | cut -d'/' -f1`

if [ -z $ipaddr ]; then
	echo " -"
else
	echo " $ipaddr"
fi
