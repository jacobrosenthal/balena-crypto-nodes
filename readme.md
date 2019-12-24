# balena-crypto-nodes

Just my toy rapsberry pi balena setup for some crypto nodes. Memory really going to be an issue on anything except a pi4 with 4gbs of Ram.... Also requires at least 300gb for a full eth node (at time of writing) USB 3.1 SATA III [UAS or UASP](https://en.wikipedia.org/wiki/USB_Attached_SCSI) or better SSD with label STORAGE.
To set it up the first time from linux:
* `apt-get update && apt-get install parted`
* `lsusb`
* `parted /dev/sda`
* `mklabel gpt`
* `mkpart primary ext4 1MiB 100%`
* `print`
* `quit`
* `mkfs.ext4 /dev/sda1 -L STORAGE`

To test geth ipc on the geth container, you may want to check `eth.syncing` by opening a terminal to the geth container and typing `/usr/local/geth attach --datadir /mnt/storage/geth`

To test rpc on the geth container, you can open a terminal to geth and type either
* `curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' localhost:8545`
* `/usr/local/geth attach http://localhost:8545/rpc/`

Then you'll want to test you can route that port to your local machine with `balena tunnel 155461d -p 8545:8545`
And you can test with `geth attach http://localhost:8545/rpc/`

Finally you might like metamask to use your tunneled node.
* [find metamask extension uuid for chrome](https://www.bleepingcomputer.com/tutorials/how-to-find-id-for-chrome-extension/) or [add on id for firefox](https://stackoverflow.com/questions/48056506/get-add-on-id-of-extensions-in-firefox)
* set balena device variable BALENAENV_CORS to chrome-extension://YOUR_METAMASK_EXTENSION_UUID_HERE or moz-extension://YOUR_METAMASK_EXTENSION_UUID_HERE
* Use the metamask dropdown to select your localhost:8485 node. See [metamask documentation](https://metamask.zendesk.com/hc/en-us/articles/360015290012-Using-a-Local-Node) for more information
