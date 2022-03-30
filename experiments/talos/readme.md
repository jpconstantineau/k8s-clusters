## Talos on RPI4

I tried Talos on the RPI 4, however, due to the complexity of setting up storage, the lack of Longhorn support, it's just too much of a pain to use.
See deteils [here](https://www.talos.dev/v1.0/guides/storage/)

There is a nfs support as part of Talos, however, using a 1Gb Link instead of local SSD storage isn't ideal...

I have 120Gb USB3 SSDs connected to the RPI4s and as the boot system is read-only, this essentially wastes all that nice SSD speed and capacity that would otherwise be available.

As such, I recommend sticking to PIOS 64 bits and K3S.

All of the files in this folder are here for reference and do not point to any existing cluster.