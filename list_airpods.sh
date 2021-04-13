#!/bin/bash

dbus-send --print-reply --system --dest=org.bluez / org.freedesktop.DBus.ObjectManager.GetManagedObjects | grep -E '/org/bluez/hci./dev_.._.._.._.._.._../sep./fd[0-9]+' -o
