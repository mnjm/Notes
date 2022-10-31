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

## Links
- https://syncthing.net/