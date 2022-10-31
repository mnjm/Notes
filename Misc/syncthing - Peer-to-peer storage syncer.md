syncthing is a peer-to-peer storage syncer without using cloud

## Installation

### Linux - Debian
- `sudo apt install syncthing`
- To auto-start syncthing after boot-up,
	- Find the `syncthing-start.desktop` file. 
		- `find /usr/share/applications -name syncthing-start.desktop`
	- Place it in your Desktop Environment's auto-start folder
		- cp /usr/share/applications/syncthing-start.desktop ~/.config/autostart
### Android
- Install through playstore

## Configuration
- Open syncthing UI portal using `http://127.0.0.1:8384/` URL
- Pair devices using its unique `device-id`
- Create a folder link with unique `folder-id`
	- Add versioning system (to be safe)
	- Add ignore patterns (similar to `.gitignore`)
	- Add paired devices in the `sharing` panel to share the folder with that device
- On the other device, accept the `folder share request` and setup the folder 

## Links
- https://syncthing.net/