# airpodsPro_dbusVolumeSetter
Useful script to change aripods pro hard volume with dbus messages

## Usage

`./volume_airpods.sh ${VOLUME}`

where ${VOLUME} is an integer from 0 to 127.

### Not working ?
Open 
`/lib/systemd/system/bluetooth.service` file

and check that bluetooth daemon is launched without plugin options.  
It should be like this:

`ExecStart=/usr/lib/bluetooth/bluetoothd`

and not like this

`ExecStart=/usr/lib/bluetooth/bluetoothd --plugin=a2dp`

or like this

`ExecStart=/usr/lib/bluetooth/bluetoothd --noplugin=avrcp`

then restart bluetooth daemon

`sudo systemctl daemon-reload`  
`sudo systemctl restart bluetooth`

