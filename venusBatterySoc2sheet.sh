#!/bin/bash

echo $VENUS_IP

STATUS=$(ssh root@$VENUS_IP dbus-send --system --print-reply --dest=com.victronenergy.system /Dc/Battery/Soc com.victronenergy.BusItem.GetValue | grep variant | awk '{print $3}')

curl "$GOOGLE_FORM_URL" \
  --data-raw "$GOOGLE_FROM_ENTRY=$STATUS" \
  --compressed