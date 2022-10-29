## Install
- `sudo apt install rclone`

## Setup
rclone creates `remotes` to link between different cloud storage. Below setups are for linking MS onedrive.
1. Run 'rclone config' - this can be used to create/edit `remotes`
	- 'n'+Enter to create a new remote. name it as `onedrive`
	- Select the `Microsoft OneDrive` cloud service
	- No need to enter client-id or secret. So click `Enter` to skip
	- Use auto config. Press Y when asked
	- Login to your MS OneDrive account
	- Select the account type as 'OneDrive Personal'
	- Select `0` drive and enter `Y` twice
	- repeat the above steps to enter new `remotes` or enter `q` to quit out of config
2. Mount the drive to a directory
	- Create a directory `mkdir -p ~/sync/onedrive`
	- Run the below **blocking** command to mount
		```bash
rclone --vfs-cache-mode writes mount onedrive:  ~/sync/onedrive
		```
	- `--vfs-cache-mode writes` is a sync strat.
	- Add `--daemon` to run it in daemon mode
		```bash
rclone --vfs-cache-mode writes mount onedrive:  ~/sync/onedrive --daemon	
		```
		- Kill the process to stop the daemon

## Configuration options
### Referring to a folder from cloud to sync/mount
- Add the folder path (as in cloud storage) to the remote reference as shown below
```bash
rclone --vfs-cache-mode writes mount onedrive:<folder-path>  ~/sync/onedrive --daemon	
```
### Sync the files without mounting 
- Below command just syncs remote and local folders
```bash
rclone sync -P --fast-list --transfers=32 gdrive:/Notes/Notes ./Notes
```
- Options
	- -P : show progress bar
	- --fast-list : speeds up the sync
	- --transfer=32 : transfer 32 files at a time
## Links:
- https://itsfoss.com/use-onedrive-linux-rclone/
- https://rclone.org/docs/#configure
- https://dmuth.medium.com/back-up-your-google-drive-files-with-rclone-ff8ff6682db