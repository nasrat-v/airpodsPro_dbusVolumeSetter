#!/bin/bash

echo Setting volume to $1

for dev in $(./list_airpods.sh); do dbus-send --system --print-reply --type=method_call --dest="org.bluez" "$dev" org.freedesktop.DBus.Properties.Set string:"org.bluez.MediaTransport1" string:"Volume" variant:uint16:$1; done
