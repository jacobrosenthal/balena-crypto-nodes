# balena-crypto-nodes

Just my toy rapsberry pi balena setup for some crypto nodes. Memory really going to be an issue... Requires at least 200gb ssd (at time of writing) with label STORAGE

For jsonrpc from say metamask:
* Find your balena device uuid on the balena dashboard
* [find metamask extension uuid for chrome](https://www.bleepingcomputer.com/tutorials/how-to-find-id-for-chrome-extension/) or [add on id for firefox](https://stackoverflow.com/questions/48056506/get-add-on-id-of-extensions-in-firefox)
* set balena device variable BALENAENV_PARITY_CORS to chrome-extension://YOUR_METAMASK_EXTENSION_UUID_HERE or moz-extension://YOUR_METAMASK_EXTENSION_UUID_HERE
* `balena tunnel YOUR_BALENA_DEVICE_UUID -p 22222:4321`
* `ssh -L 8545:localhost:8545 -p 4321 root@localhost`
* Consult https://metamask.zendesk.com/hc/en-us/articles/360015290012-Using-a-Local-Node for how to change your network to localhost 8545
